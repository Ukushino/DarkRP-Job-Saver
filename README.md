# DarkRP Auto Job Restore

🎖 A lightweight DarkRP module to automatically restore the last job a player used when reconnecting to the server.

---

## 🇬🇧 Description (English)

**Auto Job Restore** is a Garry's Mod DarkRP module that saves a player's last known job and reassigns it automatically upon reconnecting, skipping the usual F4 menu selection.  
It provides a smoother roleplay experience and is especially useful on structured RP servers with regiment-based roles.

### ✅ Features
- Saves player’s last DarkRP job (by SteamID64)
- Automatically reassigns the job on reconnect
- Prevents assignment if the job is full, disabled, or restricted
- Notification in chat when job is restored
- Uses JSON (`data/lastjobs.txt`) for persistence

### 📦 Installation
1. Drop the `auto_job_restore` folder into:
   ```
   garrysmod/addons/darkrpmodification/lua/darkrp_modules/
   ```
2. Restart your server.

---

## 🇫🇷 Description (Français)

**Auto Job Restore** est un module pour DarkRP qui enregistre le dernier métier (job) utilisé par un joueur et le lui réattribue automatiquement lorsqu'il se reconnecte, sans passer par le menu F4.

Idéal pour les serveurs roleplay militaires ou organisés en régiments, ce module rend l’expérience plus fluide et immersive.

### ✅ Fonctionnalités
- Sauvegarde du dernier métier utilisé (via SteamID64)
- Attribution automatique du métier à la reconnexion
- Ne réattribue pas un job plein ou restreint
- Message d’information dans le chat
- Persistance via fichier JSON (`data/lastjobs.txt`)

### 📦 Installation
1. Placez le dossier `auto_job_restore` dans :
   ```
   garrysmod/addons/darkrpmodification/lua/darkrp_modules/
   ```
2. Redémarrez votre serveur.

---

## 🔐 Permissions
Only jobs that are still available and valid will be restored.

---

## 📣 Credit
Developed by Caldryk & ChatGPT, 2024.
