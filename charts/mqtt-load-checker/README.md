# mqtt-load-checker Helm chart

Helm chart for https://github.com/pablitovicente/mqtt-load-generator's checker tool

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```
helm repo add pgschk https://helm.gschk.de
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
mqtt-load-checker` to see the charts.

To install the mqtt-load-checker chart:

```
helm install my-mqtt-load-checker pgschk/mqtt-load-checker
```

To uninstall the chart:

```
helm delete my-mqtt-load-checker
```

## Important Helm values

| Helm value                | Description                                                                                   | Example       |
|---------------------------|-----------------------------------------------------------------------------------------------|---------------|
| `mqtt.hostname`           | Hostname of MQTT broker to generate load on                                                   | broker.my.tld |
| `mqtt.username`           | Username to use when creating a sessions on the MQTT broker                                   | admin         |
| `mqtt.password`           | Password to use when creating a sessions on the MQTT broker                                   | admin         |
| `mqtt.topic`              | Topic on which generated messages will be subscribed to                                       | /golang/pub   |

You can find additional values in [values.yaml](values.yaml)
