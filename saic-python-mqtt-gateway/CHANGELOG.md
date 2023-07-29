# SAIC MQTT Gateway (Python)

## 0.3.0

### Added

* Keep polling for a configurable amount of time after the vehicle has been shutdown
* Battery (SoC) target load
* Start/Stop charging
* Enhanced A/C control
* Turn off message requests when refresh mode is off
* Home Assistant auto-discovery

### Fixed

* Vehicle and charging status updates stop after a while
* Inconsistent topic name for battery management data (BMS) removed

## 0.2.4

### Added

* docker support for architecture linux/arm/v7

## 0.2.3

### Added

* Using new saic-ismart-client (version 1.3.0)
* Feature: transmit ABRP data even if we have no GPS data

### Fixed

* empty environment variables are ignored
* Driving detection fixed

## 0.2.2

Vehicle control commands are finally working

### Added

* Turn front window defroster heating on or off
* Turn A/C on or off
* Configurable re-login delay
* Using new saic-ismart-client (version 1.2.6)
* Environment variable to configure log level

### Fixed
* environment variable overwrites the predefined default value

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
