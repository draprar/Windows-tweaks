## Disable Telemetry – Privacy Tweak

Disables Microsoft telemetry and feedback collection for improved privacy, without compromising system stability or notifications.

### Files:
- `disable_telemetry.reg` – Turns off telemetry services and feedback-related tasks.
- `undo_disable_telemetry.reg` – Restores default telemetry and feedback behaviors.

### What’s disabled:
- Telemetry services (`DiagTrack`, `dmwappushservice`)
- Feedback and survey prompts
- User activity tracking and application compatibility telemetry
- Sets telemetry level to "Security" (0)

Tested on Windows 10. Safe for Home, Pro, and Enterprise editions.
