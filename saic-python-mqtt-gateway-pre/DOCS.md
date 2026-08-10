# SAIC MQTT Gateway

A service that queries the data from an MG iSMART account and publishes the data over MQTT.

MG iSMART is the connectivity system in your MG car (MG5, MG4, ZS...).

The implementation is based on the findings from
the [SAIC-iSmart-API Documentation](https://github.com/SAIC-iSmart-API/documentation) project.

## Prerequisites

* You have an iSMART account (can be created in the iSMART app)
* Your car needs to be registered to your account

## Configuration

To start the addon you need to enter the following parameters to the config page:

### SAIC API

| ENV variable                 | Description                                                                                                                                                                         |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| SAIC_USER                    | SAIC user name - **required**                                                                                                                                                       |
| SAIC_PASSWORD                | SAIC password - **required**                                                                                                                                                        |
### MQTT Broker

| ENV variable     | Description                                                                                                                                                                                          |
|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| MQTT_URI         | URI to the MQTT Server. TCP: tcp://mqtt.eclipseprojects.io:1883, WebSocket: ws://mqtt.eclipseprojects.io:9001 or TLS: tls://mqtt.eclipseprojects.io:8883 - Leave it empty to disable MQTT connection |
| MQTT_USER        | MQTT user name                                                                                                                                                                                       |
| MQTT_PASSWORD    | MQTT password                                                                                                                                                                                       |
### advanced settings

For further customization, copy the gateway.env file to /addon_configs/saic_python_mqtt_gateway-pre/gateway.env. This folder will be created during the first start of the add-on. You can find more environment variables on the [main page](https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway#saic-api).
Same for charging-stations file: Copy it to the folder to activate it!

## Home Assistant auto-discovery

The gateway supports [Home Assistant MQTT discovery](https://www.home-assistant.io/integrations/mqtt#mqtt-discovery). It
publishes configuration information so that the vehicle appears as a MQTT device. This will save you a lot of
configuration effort since all the entities provided by the vehicle will automatically show-up in Home Assistant.
