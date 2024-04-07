## What's Changed
* Battery capacity for MG ZS EV Standard 2021 by @tosate in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/160
* Add battery capacity for MG5 Maximum Range Luxury by @sfudeus in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/166
* Support for openWB software version 2.0 by @tosate in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/172
* Fix initial remote ac temp value by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/175
* Apply battery_capacity_correction_factor to lastChargeEndingPower by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/176
* Detect DRIVETRAIN_HV_BATTERY_ACTIVE when rear window heater is on by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/177
* Expose power usage stats by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/178
* Read electric estimated range from BMS and Car State as it gets reset during parking by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/181
* Update changelog for 0.5.15 by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/182
* Compute charging refresh period based on charging power.  by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/183
* Fixes for 0.6.0 by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/187
* Added support for cable lock and unlock by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/188
* Re-introduce tests and run them every push by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/189
* Run CI on push and PR by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/190
* Mark car not available if polling fails by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/191
* Temporary fix: require just a vehicle state refresh to mark vehicle loop as completed by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/192
* Exponential backoff during polling failures by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/193
* Assume speed is 0.0 if we have no GPS data by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/196
* Fix Charging finished sensor by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/197
* Do not send invalid data to ABRP and MQTT by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/199
* Fix test data by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/200
* Expose last charge start and end times by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/201
* Data validation by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/204
* Add sensors for current journey and OBC data by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/205
* During charging, do not easily fall back on the active refresh period by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/206
* Fix BMS and Journey sensors by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/207
* Fix currentJourneyDistance scale factor by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/208
* GPS and Charging detection fixes by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/209
* Side lights detection by @nanomad in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/210

## New Contributors
* @tosate made their first contribution in https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/pull/160

**Full Changelog**: https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway/compare/0.5.15...0.6.0-rc24