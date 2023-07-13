# Foundry VTT containerized Helm chart

Helm chart for https://github.com/pgschk/foundryvtt-containerized.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```
helm repo add pgschk https://helm.gschk.de
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
foundryvtt-containerized` to see the charts.

To install the foundryvtt-containerized chart:

```
helm install my-foundryvtt-containerized pgschk/foundryvtt-containerized \
 --set foundryVTTDownloadURL="<your timed download URL>"
```

To uninstall the chart:

```
helm delete my-foundryvtt-containerized
```

## Important Helm values

| Helm value                | Description                                                                                   | Example     |
|---------------------------|-----------------------------------------------------------------------------------------------|-------------|
| `foundryVTTDownloadURL`   | Timed Download URL you obtained through your [FoundryVTT.com](https://foundryvtt.com) account | https://... |
| `persistence.installSize` | Size of the volume for the FoundryVTT installation as Kubernetes quantinty                    | 2Gi         |
| `persistence.dataSize`    | Size of the volume for your FoundryVTT data as Kubernetes quantinty                           | 20Gi        |

You can find additional values in [values.yaml](values.yaml)
