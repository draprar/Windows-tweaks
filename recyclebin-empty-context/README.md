## Add "Empty Recycle Bin" to Desktop Context Menu

Adds a quick-access option to empty the Recycle Bin directly from the desktop background right-click menu.

### Files:
- `add_empty_recyclebin_desktop.reg` – Adds the context menu entry
- `undo_add_empty_recyclebin_desktop.reg` – Removes the context menu entry

The script uses PowerShell with `-WindowStyle Hidden` to avoid showing a visible console.

No confirmation prompt – the bin is cleared instantly.

Tested on Windows 10.
