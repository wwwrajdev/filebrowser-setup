# filebrowser-setup

Here’s the step-by-step guide for Windows 11:

✅ Step 1: Download FileBrowser

Go to the FileBrowser GitHub releases page:
👉 https://github.com/filebrowser/filebrowser/releases

Download windows-amd64-filebrowser.zip (since your laptop is Windows 11, 64-bit).

Extract the zip → you’ll get filebrowser.exe.

✅ Step 2: Place the Executable

Move filebrowser.exe to a permanent folder (example: C:\filebrowser).

Create a folder where FileBrowser will store its database & config (optional). Example:

C:\filebrowser\data

✅ Step 3: Run FileBrowser on Local Network

Open Command Prompt (cmd) or PowerShell and run:

cd C:\filebrowser
filebrowser.exe -r "D:\familyides-u" -a 0.0.0.0 -p 9090

Explanation:

-r "D:\familyides-u" → Root folder FileBrowser will expose.

-a 0.0.0.0 → Bind to all network interfaces (important for LAN access).

-p 9090 → Port number (you can change if needed).

✅ Step 4: Find Your Computer’s LAN IP

Run in cmd:

ipconfig


Look for IPv4 Address (e.g., 192.168.1.100).

✅ Step 5: Access FileBrowser

On your Windows PC:
👉 http://localhost:9090

On other devices in the same network:
👉 http://192.168.1.100:9090

(Default login → username: admin | password: admin. It will ask you to change it.)

✅ Step 6: (Optional) Auto Start on Boot

Press Win + R, type shell:startup, and press Enter.

Paste a shortcut of a .bat file with the following content:

@echo off
cd C:\filebrowser
filebrowser.exe -r "D:\familyides-u" -a 0.0.0.0 -p 9090


Now FileBrowser starts automatically on system boot.

⚠️ Important:

Ensure Windows Firewall allows filebrowser.exe on Private Network.

If you want WAN access (outside home WiFi), you must configure port forwarding in your router.