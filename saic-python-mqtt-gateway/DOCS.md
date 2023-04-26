# SAIC MQTT Gateway (Python)

A service that queries the data from an MG iSMART account and publishes the data over MQTT.

MG iSMART is the connectivity system in your MG car (MG5, MG4, ZS...).

The implementation is based on the findings from the [SAIC-iSmart-API Documentation](https://github.com/SAIC-iSmart-API/documentation) project.

## Prerequisites

* You have an iSMART account (can be created in the iSMART app)
* Your car needs to be registered to your account

## Configuration

Following parameters are available via options tab:
```
| Option          | Description                                                                                                                              |
|-----------------|------------------------------------------------------------------------------------------------------------------------------------------|
| MQTT_URI        | URI to the MQTT Server. TCP: tcp://mqtt.eclipseprojects.io:1883 or WebSocket: ws://mqtt.eclipseprojects.io:9001 - **required**           |
| MQTT_USER       | MQTT user name                                                                                                                           |
| MQTT_PASSWORD   | MQTT password                                                                                                                            |
| MQTT_TOPIC      | Provide a custom MQTT prefix to replace the default: saic                                                                                |
| SAIC_USER       | SAIC user name - **required**                                                                                                            |
| SAIC_PASSWORD   | SAIC password - **required**                                                                                                             |
| ABRP_API_KEY    | API key for the A Better Route Planner telemetry API. Default is the open source telemetry API key 8cfc314b-03cd-4efe-ab7d-4431cd8f2e2d. |
| ABRP_USER_TOKEN | Mapping of VIN to ABRP User Token. Multiple mappings can be provided seperated by ',' Example: LSJXXXX=12345-abcdef,LSJYYYY=67890-ghijkl |      
| OPENWB_LP_MAP   | Mapping of VIN to openWB charging point. Multiple mappings can be provided seperated by ',' Example: 1=LSJXXXX,2=LSJYYYY                 |

```
## openWB integration

The state-of-charge (SoC) can be provided over MQTT to an [openWB wallbox](https://openwb.de). To activate this, you need to provide the Mapping of VIN to openWB charging point. With this information the gateway can also detect that the vehicle is charging.

Just configure the MQTT gateway to connect to the MQTT broker which is running on your openWB and enable SoC over MQTT in the openWB.

The openWB can also connect to an external MQTT broker. However, this connection needs to be secured with TLS so that messages are not exchanged in clear text. Since the MQTT gateway does not yet support secured MQTT connections, it won't be possible to use a third-party broker.

## A Better Route Planner (ABRP) integration

Telemetry data from your car can be provided to [ABRP](https://abetterrouteplanner.com/). **Be aware that this is not done by default.** The data will be sent only if you provide the mapping of your vehicle identification number (VIN) to an ABRP user token.
