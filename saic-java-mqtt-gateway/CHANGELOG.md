# SAIC MQTT Gateway (Java)

## 0.2.0

### Changed
- initial Release 
### Fixed
- MQTT
  - log ABRP errors, don't fail the whole thread
  - keep last drivetrain/hvBatteryActive state until it's updated from the API
  - allow setting the drivetrain/hvBatteryActive/set state to force updates
  - forbid retained set messages
  - added topics refresh/lastVehicleState and refresh/lastChargeState
