# SAIC-JAVA-MQTT-GATEWAY

This gateway allows to poll the car state and publish it to 
a MQTT broker. It is written in Java and uses the saic-java-api 
from the same project.


## Running

### MQTT Broker
In case you need a MQTT Broker, you could use mosquitto from eclipse. https://mosquitto.org

> mosquitto is not required to run the gateway. You can use any MQTT broker you want.

If you plan on running mosquitto as a docker image, you could use this template
as a starting point: https://github.com/vvatelot/mosquitto-docker-compose

> Note: In case you use mosquitto, prefer tcp over ws protocol for the gateway.

### Commands

The gateway supports the following commands from mqtt topics:

Base topic is always:
    `saic/{saic-user}/vehicles/{vin}`

* `drivetrain/hvBatteryActive` {true|false}
* `climate/remoteClimateState` {true|false}
* `doors/locked` {true|false}
* `refresh/mode` {periodic|off|force}
* `refresh/period/active` {seconds} -> Interval in seconds to poll the car state when hvBattery is active (30s default)
* `refresh/period/inActive` {seconds} -> Interval in seconds to poll the car state when hvBattery is inActive (86400s default)
* `refresh/period/inActiveGrace` {seconds} -> -> Interval in seconds handle car state as active after hvBattery was disconnected (600s default)

To set these values, just post a message to the corresponding topic plus `/set` with the desired value. 

Further commands will be supported in the future.
