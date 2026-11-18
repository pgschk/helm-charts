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

On its first start the container downloads FoundryVTT from that URL into
the install volume and unzips it, which takes a minute or two; the pod is
ready once Foundry answers on `/api/status`. The URL is only valid for five
minutes, and only needed for that first start: later starts find Foundry in
the install volume. Update Foundry with its own updater in the setup
screen, or empty the install volume and install again with a fresh URL.

Without a working install (no URL, or an expired one), the container
serves a page with instructions instead, and the pod stays not ready.

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
| `image.digest`            | Optional digest to pin the image build, appended to the tag                                   | sha256:...  |

You can find additional values in [values.yaml](values.yaml)
