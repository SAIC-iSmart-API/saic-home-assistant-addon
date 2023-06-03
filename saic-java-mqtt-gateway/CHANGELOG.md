# SAIC MQTT Gateway (Java)

## 0.2.1

### Fixed
- MQTT
  - calculate correct tyre pressure
### Dependencies
- Bump testcontainers-bom from 1.18.1 to 1.18.3 (#27)
- Bump maven-source-plugin from 3.2.1 to 3.3.0 (#23)
- Bump spotless-maven-plugin from 2.36.0 to 2.37.0 (#24)
- Bump jackson-dataformat-toml from 2.15.1 to 2.15.2 (#25)

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
