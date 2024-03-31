# SAIC MQTT Gateway (Python)

Attention: With >= 0.5.x the saic gateway uses the new API version. Please switch to legacy version if the new API doesn't work for you!

## 0.6.0 (WIP)

### Fixed

* Do not send invalid data to ABRP and MQTT by @nanomad in #199
* Battery capacity for MG ZS EV Standard 2021 by @tosate in #160
* Add battery capacity for MG5 Maximum Range Luxury by @sfudeus in #166
* Support for openWB software version 2.0 by @tosate in #172
* Fix initial remote ac temp value by @nanomad in #175
* Apply battery_capacity_correction_factor to lastChargeEndingPower by @nanomad in #176
* Detect DRIVETRAIN_HV_BATTERY_ACTIVE when rear window heater is on by @nanomad in #177
* Read electric estimated range from BMS and Car State as it gets reset during parking by @nanomad in #181
* Update changelog for 0.5.15 by @nanomad in #182
* Compute charging refresh period based on charging power. by @nanomad in #183
* Assume speed is 0.0 if we have no GPS data by @nanomad in #196
* Fix Charging finished sensor by @nanomad in #197

## New Contributors
* @tosate made their first contribution in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/160

### Added

* Expose power usage stats by @nanomad in #178
* Re-introduce tests and run them every push by @nanomad in #189
* Run CI on push and PR by @nanomad in #190
* Added support for cable lock and unlock by @nanomad in #188
* Mark car not available if polling fails by @nanomad in #191
* Exponential backoff during polling failures by @nanomad in #193

**Full Changelog**: https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/compare/0.5.15...0.6.0-rc13

## 0.5.15

### Fixed

* Battery capacity for MG5 SR Comfort

## 0.5.14

### Fixed

* Report correct total battery capacity for the MG4 Throphy Extended Range (Fixes #152)
  
## 0.5.10

### Added

* MQTT: Add support for scheduled battery heating. Payload is JSON with startTime and mode (on or off)
* HA: Expose scheduled battery heating
* HA: Expose some switches as sensors as well to ease automations

## 0.5.9

### Added

* MQTT: Add support for battery heating. True means ON, False means OFF
* HA: Expose battery heating as an ON-OFF switch

## 0.5.8

### Added

* MQTT: Add support for heated seats control on both front left and front right seats. Values range from 0-3 on some
  models, 0-1 on others. 0 means OFF
* HA: Expose heated seats control as either a select with 4 states (OFF, LOW, MEDIUM, HIGH) or as a ON-OFF switch
  depending on the reported car feature set

## 0.5.7 

### Fixed

* Align some vehicle control commands to their actual behavior on the official app
* Door closing command should be more reliable now

### Added

* The new option `SAIC_PHONE_COUNTRY_CODE` can be used to specify the country code for the phone number used to login

## 0.5.2

### Fixed

* Gateway was not logging-in properly after a logout

### Changed

* Config option `SAIC_REST_URI` now points to the new production API endpoint by default

### Added

* Config option `SAIC_REGION` is used to select the new API region
* Config option `SAIC_TENANT_ID` is used to select the new API tenant

Both values default to the EU instance production values

### Removed

* Drop config option `SAIC_URI` as it is no longer relevant

## 0.5.1

### Fixed

* Typo in check_for_new_essages() fixed

### Added

* Configurable messages-request-interval

## 0.5.0

### Changed

* Switch to saic-python-client-ng library (New SAIC API)
* blowing only command fixed

## 0.4.7

### Changed

* Whenever a chargingValue is received that is different from the last received value, a forced refresh is performed
* The socTopic is an optional field in the charging station configuration

## 0.4.6

### Fixed

* Detection of battery type
* Remove special characters from username to generate valid MQTT topics
* Setting ha_discovery_enabled to False had no effect
* Docker image based on python:3.11-slim
* Force refresh by charging station only if charging value has changed
* MQTT connection error logging 
* Front window heating enables "Blowing only"

## 0.4.5

### Fixed

* Binary string decoding issue fixed in saic-python-client 1.6.5
  
## 0.4.4

### Fixed

* Error message decoding issue fixed in saic-python-client 1.6.4

## 0.4.3

### Fixed

* Previous fix corrects dispatcher message size for V2 messages. Now it is also fixed for V1 messages.

## 0.4.2

### Fixed

* Previous fix works only for messages without application data. Those are typically error messages that are provided with wrong dispatcher message size

## 0.4.1

### Fixed

* Calculate dispatcher message size and use the calculated value if it differs from the provided API value
  
## 0.4.0

### Added

* Control charge current limit
* Dynamic refresh period during charging
* Force polling around scheduled charging start
* Further A/C enhancements
* Generic charging station integration (OPENWB_LP_MAP argument is deprecated now)
* TLS support

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
