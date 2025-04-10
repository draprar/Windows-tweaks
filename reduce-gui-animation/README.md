## Reduce Menu Animation Delay

Speeds up GUI responsiveness by reducing the delay before context menus open, and includes additional tweaks for window and taskbar animations.

### Files:
- `reduce_menu_delay.reg` – Sets the delay to 100ms (default is 400ms). Also disables window animations, modifies Alt+Tab speed, and adjusts taskbar icon animations.
- `undo_reduce_menu_delay.reg` – Restores default settings, including the original delay (400ms), and re-enables animations.

**Note:** If you don't want a specific functionality, you can simply remove the corresponding line from the `.reg` file before applying it.

Tested on Windows 10.