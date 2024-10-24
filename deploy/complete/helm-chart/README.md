# MuShop Helm Chart

The Helm charts here can be used to install all components of MuShop to the Kubernetes cluster.
For practical purposes, multiple charts are used to separate installation into the following steps:

1. [`mushop`](#installation) Deploys the MuShop application runtime

## Setup

The `setup` chart includes several recommended installations on the cluster. These
installations represent common 3rd party services, which integrate with
Oracle Cloud Infrastructure or enable certain features within the application.

1. `cd deploy/complete/helm-chart`


### QuickStart

For an installation without connecting Oracle Cloud Infrastructure services, use the following:

```bash
helm install mymushop mushop \
  --namespace mushop \
  --create-namespace \
  --set global.mock.service=all
```

