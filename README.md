Mender Orchestrator Interfaces
=====================================

Mender is an open source over-the-air (OTA) software updater for embedded Linux devices. Mender
comprises a client running at the embedded device, as well as a server that manages deployments
across many devices.

This repository contains interfaces for Orchestrator, as well as Update Modules and Inventory
scripts when using the Orchestrator together with the Mender client. Orchestrator is a Mender
Enterprise component responsible for updating the devices in a system.

![Mender logo](https://github.com/mendersoftware/mender/raw/master/mender_logo.png)

## Getting started

To start using Mender, we recommend that you begin with the Getting started section in [the Mender
documentation](https://docs.mender.io/).

## Support

Only the components in the list below are supported by Northern.tech. Components that are not in the
list are community supported only:

* `interfaces/v1/rootfs-image`
* `inventory/mender-inventory-mender-orchestrator`
* `modules/mender-orchestrator-manifest`

## Contributing

We welcome and ask for your contribution. If you would like to contribute to Mender, please read our
guide on how to best get started [contributing code or
documentation](https://github.com/mendersoftware/mender/blob/master/CONTRIBUTING.md).

## License

All files in this repository are licensed under the Apache License, Version 2.0, unless indicated
otherwise. See
[LICENSE](https://github.com/mendersoftware/mender-orchestrator-support/blob/master/LICENSE)
for the full license text.

## Connect with us

* Join the [Mender Hub discussion forum](https://hub.mender.io)
* Follow us on [Twitter](https://twitter.com/mender_io). Please feel free to tweet us questions.
* Fork us on [Github](https://github.com/mendersoftware)
* Create an issue in the [bugtracker](https://northerntech.atlassian.net/projects/MEN)
* Email us at [contact@mender.io](mailto:contact@mender.io)
* Connect to the [#mender IRC channel on Libera](https://web.libera.chat/?#mender)


## Authors

Mender was created by the team at [Northern.tech AS](https://northern.tech), with many contributions
from the community. Thanks [everyone](https://github.com/mendersoftware/mender/graphs/contributors)!

[Mender](https://mender.io) is sponsored by [Northern.tech AS](https://northern.tech).
