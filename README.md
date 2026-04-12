# Windows Tweaks

A collection of minimal, useful `.reg` tweaks for Windows 10.  
Each folder contains a tweak and a matching undo file.

> This repository is archived and read-only.

> ⚠️ Always back up your registry before applying any `.reg` files.  

## Archived / End of Life (EOL)

Windows 10 reached end of support in **October 2025**. This repository is a **public archive (read-only)** (as of **2026-04-12**).

This is an **intentional archive** — the content remains available as a reference and a set of small, reversible tweaks:

- No new tweaks or compatibility updates are planned.
- This project is not actively monitored for support requests.
- You are welcome to **fork** the repository if you want to continue maintenance.

### Support / Contributions

- This repository is read-only.
- Issues and pull requests are disabled.
- If you want to extend or maintain these tweaks, please fork the repository.

---

## Available Tweaks

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

- Primary target: **Windows 10**. Windows 11 is **not** a target and behavior is not guaranteed.
- Prefer creating a **restore point** before applying system-level tweaks.
- Review `.reg` files in a text editor before importing so you understand what keys/values are being changed.
- Run `.reg` files with an account that has the required privileges (some tweaks need Administrator rights).
- Some changes may require sign out/in or restart to fully apply.

### Security note

This repository contains registry modifications. Treat `.reg` files like code: only apply changes you understand and trust.

## Usage

1. Navigate to the folder of the tweak you want.
2. Open the `.reg` file in a text editor or download it.
3. Double-click the file to apply the tweak **or** copy the contents into Notepad and save it as a `.reg` file.
4. To undo, run the corresponding `undo_*.reg` file the same way.

### Recommended rollback strategy

1. Use the matching `undo_*.reg` for the tweak.
2. If anything goes wrong: use System Restore / a backup.

---

## For Fork Maintainers

If you fork this repository and continue development, you can use the validator:

```powershell
PowerShell -NoProfile -ExecutionPolicy Bypass -File .\scripts\validate-repo.ps1
```

It checks that each tweak folder contains a `README.md`, at least one apply `.reg`, at least one `undo_*.reg`, and that the root `README.md` lists each tweak.

---

## License

MIT – use, modify, and share freely.

