## Disable Telemetry – Privacy Tweak

> Status: archived (EOL). This tweak is provided as-is for Windows 10.

Disables Microsoft telemetry and feedback collection for improved privacy, without compromising system stability or notifications.

Note: disabling telemetry can affect diagnostics/troubleshooting and may change behavior across Windows builds.

### Files:
- `disable_telemetry.reg` – Turns off telemetry services and feedback-related tasks.
- `undo_disable_telemetry.reg` – Restores default telemetry and feedback behaviors.

### What’s disabled:
- Telemetry services (`DiagTrack`, `dmwappushservice`)
- Feedback and survey prompts
- User activity tracking and application compatibility telemetry
- Sets telemetry level to "Security" (0)

Tested on Windows 10. Safe for Home, Pro, and Enterprise editions.
