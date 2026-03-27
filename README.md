# Windows Tweaks

A collection of minimal, useful `.reg` tweaks for Windows 10.  
Each folder contains a tweak and a matching undo file.

> ⚠️ Always back up your registry before applying any `.reg` files.  

## Project Status

Windows 10 reached end of support in October 2025. This repository is in **maintenance mode**:
- Existing tweaks may receive safety/documentation fixes.
- No broad feature expansion is planned.
- New tweaks should target compatibility-conscious scenarios only.

---

## ✨ Available Tweaks

### `cmd-context-admin`
Adds "Open CMD as ADMIN" to folder and background right-click menus.

### `disable-telemetry`
Disables Windows telemetry services for better privacy.

### `recyclebin-empty-context`
Adds "Empty Recycle Bin" to the desktop context menu.

### `snappy-windows`
Speeds up UI responsiveness by disabling animations and startup delays.

---

## Compatibility and Safety

- Primary target: Windows 10.
- Run `.reg` files with an account that has the required privileges (some tweaks need Administrator rights).
- Prefer creating a restore point before applying system-level tweaks.
- Some changes may require sign out/in or restart to fully apply.

## 🚀 Usage

1. Navigate to the folder of the tweak you want.
2. Open the `.reg` file in a text editor or download it.
3. Double-click the file to apply the tweak **or** copy the contents into Notepad and save it as a `.reg` file.
4. To undo, run the corresponding `undo_*.reg` file the same way.

---

## 📜 License

MIT – use, modify, and share freely.

