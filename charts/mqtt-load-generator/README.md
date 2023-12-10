# mqtt-load-generator Helm chart

Helm chart for https://github.com/pablitovicente/mqtt-load-generator.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```
helm repo add pgschk https://helm.gschk.de
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
mqtt-load-generator` to see the charts.

To install the mqtt-load-generator chart:

```
helm install my-mqtt-load-generator pgschk/mqtt-load-generator
```

To uninstall the chart:

```
helm delete my-mqtt-load-generator
```

## Important Helm values

| Helm value                | Description                                                                                   | Example       |
|---------------------------|-----------------------------------------------------------------------------------------------|---------------|
| `mqtt.hostname`           | Hostname of MQTT broker to generate load on                                                   | broker.my.tld |
| `mqtt.username`           | Username to use when creating a sessions on the MQTT broker                                   | admin         |
| `mqtt.password`           | Password to use when creating a sessions on the MQTT broker                                   | admin         |
| `mqtt.clients`            | Number of parallel clients to use                                                             | 100           |
| `mqtt.msgPerClient`       | How many messages to generate per client                                                      | 1000          |
| `mqtt.msgSize`            | Size of messages used for load generation in bytes                                            | 1000          |

You can find additional values in [values.yaml](values.yaml)
