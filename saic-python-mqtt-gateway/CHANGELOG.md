# SAIC MQTT Gateway (Python)

## 0.2.1

### Added

* MQTT commands documented in README.md

### Changed

* Wait 15 seconds (average SMS delivery time) for the vehicle to wake up.
* Using new saic-ismart-client (version 1.1.7)

### Fixed

* Make force command more reliable

## 0.2.0

### Changed

- latest to 0.2.0 

### Fixed

- MQTT
  - PRESSURE_TO_BAR_FACTOR corrected
  - remoteClimateState topic corrected
  - Fix possible 'list index out of range' IndexError when processing VIN… 
  - Using latest SAIC iSMART client version
  - force single fetch by MQTT message
