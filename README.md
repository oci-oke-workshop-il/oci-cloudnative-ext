# ![MuShop Logo](./images/logo.png#gh-light-mode-only)![MuShop Logo - Dark Mode](./images/logo-inverse.png#gh-dark-mode-only)

MuShop is a showcase of several [Oracle Cloud Infrastructure][oci] services in a unified reference application. The sample application implements an e-commerce platform built as a set of micro-services. The accompanying content can be used to get started with cloud native application development on [Oracle Cloud Infrastructure][oci].

| ![home](./images/screenshot/mushop.home.png) | ![browse](./images/screenshot/mushop.browse.png) | ![cart](./images/screenshot/mushop.cart.png) | ![about](./images/screenshot/mushop.about.png) |
|---|---|---|---|

MuShop can be deployed in different ways to explore [Oracle Cloud Infrastructure][oci] based on your subscription. Both deployment models can be used with trial subscriptions. However, [Oracle Cloud Infrastructure][oci] offers an *Always Free* tier with resources that can be used indefinitely.


```text
mushop
└── deploy
    └── complete
```



## Getting Started with MuShop Complete

MuShop Complete is a polyglot micro-services application built to showcase a cloud native approach to application development on [Oracle Cloud Infrastructure][oci] using Oracle's [cloud native](https://www.oracle.com/cloud/cloud-native/) services. MuShop Complete uses a Kubernetes cluster, and can be deployed using the provided `helm` charts (preferred), or Kubernetes manifests. It is recommended to use an Oracle Container Engine for Kubernetes cluster, however other Kubernetes distributions will also work.


### Complete Topology

The following diagram shows the topology created by this stack.

![MuShop Complete Infra](./images/complete/00-Topology.png)




[oci]: https://cloud.oracle.com/en_US/cloud-infrastructure
[orm]: https://docs.cloud.oracle.com/iaas/Content/ResourceManager/Concepts/resourcemanager.htm
[tf]: https://www.terraform.io
[orm_landing]:https://www.oracle.com/cloud/systems-management/resource-manager/
[chartdocs]: https://github.com/oracle-quickstart/oci-cloudnative/tree/master/deploy/complete/helm-chart#setup
[magic_button]: https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg
[magic_mushop_basic_stack]: https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/oracle-quickstart/oci-cloudnative/releases/latest/download/mushop-basic-stack-latest.zip
[magic_mushop_stack]: https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/oracle-quickstart/oci-cloudnative/releases/latest/download/mushop-stack-latest.zip
