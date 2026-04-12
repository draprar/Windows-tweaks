## Snappy Windows – Performance Tweak Pack

> Status: archived (EOL). This tweak pack is provided as-is for Windows 10.

Improves overall GUI responsiveness in Windows by reducing animation delays, tooltip lag, startup delays, and unnecessary visual effects.

### Files:
- `snappy-windows.reg` – Applies tweaks for faster menus and tooltips, reduced taskbar/minimize animations, and no startup-app delay.
- `undo_snappy-windows.reg` – Restores all default settings.

### Tweaks included:
- Faster context menus (`MenuShowDelay`)
- Disabled taskbar and minimize/maximize animations
- Quicker tooltip display (`MouseHoverTime`)
- No delay for startup apps (`StartupDelayInMSec`)

### Notes:
- Uses per-user settings (`HKEY_CURRENT_USER`) only.
- You may need to sign out/in for all visual changes to take effect.

Tested on Windows 10.
