## Disable Basic Telemetry

Disables core Microsoft telemetry services for improved privacy.

### Services affected:
- Connected User Experiences and Telemetry (`DiagTrack`)
- WAP Push Service (`dmwappushservice`)
- Sets telemetry level to 0 (Security only)

### Files:
- `disable_telemetry_basic.reg` – Disables telemetry
- `undo_disable_telemetry_basic.reg` – Restores default telemetry settings

Tested on Windows 10.
