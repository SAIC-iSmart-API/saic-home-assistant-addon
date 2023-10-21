# SAIC MQTT Gateway (Java)

## 0.3.0

### Added
- API
  - ASN.1 Types for `OTA_ChrgCtrlReq` and `OTA_ChrgCtrlStsResp`
- MQTT
  - support starting/stopping charging via setting `drivetrain/charging`
  - added topic `drivetrain/remainingChargingTime`

### Changed
- MQTT
  - **Breaking** The default refresh rate while the car is active has been changed to 30 seconds
  - **Breaking** The default refresh rate while the car is inactive has been changed to 24 hours
  - **Breaking** encode dates as unquoted ISO 8601 strings with offset and without timezone
  - support configuring `refresh/mode`, `refresh/period/active`, `refresh/period/inActive` and `refresh/period/inActiveGrace` via MQTT
  - Handle fallback for SOC when charge status update fails
  - ensure that a changed systemd configuration is picked up
  - support blowingOnly mode for `remoteClimateState`
- API
  - Handle fallback for SOC when charge status update fails

### Fixed
- MQTT
  - keep message fetch thread alive after connection failures
  - Make sure car state is updated after successful command
  - never publish `force` to the `refresh/mode` to prevent never ending polling
  - prevent setting previous refresh mode to the same value as the current #55
  - set force refresh only for real car commands

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
