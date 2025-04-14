
-- sv_autojob.lua
if not SERVER then return end

local datafile = "lastjobs.txt"
local lastJobs = {}

-- Charger les données si existantes
if file.Exists(datafile, "DATA") then
    local content = file.Read(datafile, "DATA")
    if content and content ~= "" then
        lastJobs = util.JSONToTable(content) or {}
    end
end

-- Sauvegarder la table lastJobs
local function SaveLastJobs()
    file.Write(datafile, util.TableToJSON(lastJobs))
end

-- À chaque changement de job
hook.Add("OnPlayerChangedTeam", "AutoSaveLastJob", function(ply, before, after)
    if not IsValid(ply) or not ply:SteamID64() then return end
    lastJobs[ply:SteamID64()] = after
    SaveLastJobs()
end)

-- À la reconnexion
hook.Add("PlayerInitialSpawn", "AutoLoadLastJob", function(ply)
    timer.Simple(1, function()
        if not IsValid(ply) or not ply:SteamID64() then return end

        local last = lastJobs[ply:SteamID64()]
        if not last then return end

        local jobTable = RPExtraTeams[last]
        if not jobTable then return end
        if not jobTable.customCheck or jobTable.customCheck(ply) then
            local _, canJoin, reason = hook.Run("playerCanChangeTeam", ply, last)
            if canJoin ~= false then
                ply:changeTeam(last, true)
                DarkRP.notify(ply, 0, 4, "🎖 Vous avez repris votre dernier poste : " .. team.GetName(last))
            end
        end
    end)
end)
