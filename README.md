meta-jami-imx
=============

This layer provides support for the open source communication platform Jami on
i.MX 6 (src : https://www.nxp.com/products/processors-and-microcontrollers/arm-processors/i-mx-applications-processors/i-mx-6-processors:IMX6X_SERIES).
Jami is a free and open source audio, video and text peer-to-peer communication
platform. It does not require a server, and implements distributed and secure
end-to-end encrypted communications for multiple platforms.
Website: https://jami.net/

To use Jami on i.MX 6, add jami-client-qt to your IMAGE_INSTALL.

        IMAGE_INSTALL += "jami-client-qt"

Dependencies
------------
This layer depends on:

URI: git://github.com/openembedded/openembedded-core.git
branch: master
revision: 8042ad9ca91ddaaf741366e1068c63c284ff98f5
prio: default

URI: git://github.com/openembedded/meta-openembedded.git
branch: master
revision: 73d5cd5e8d9d8a922b6a8a9d90adf0470a99314e
layers: meta-oe
        meta-networking
        meta-multimedia
prio: default

URI: git://github.com/meta-qt5/meta-qt5.git
branch: master
revision: aa96d3b978d63caeaaf5294b0171506c89cb7eba
prio: default

URI: git://git.openembedded.org/meta-python2
branch: master
revision: 8db9e4f6ceae33d7a4f55453d31e69f9858af4eb
prio: default

URI: git://github.com/Freescale/meta-freescale.git
branch: master
revision: b656c6499a452bd3040bed71f9188a7f09f464ad
prio: default

URI: git://github.com/savoirfairelinux/meta-jami.git
branch: master
revision: HEAD
prio: default

Community / Colaboration
------------------------

Repository: https://github.com/savoirfairelinux/meta-jami-imx

Maintenance
-----------

Send pull requests, patches, comments or questions on GitHub.

License
-------

All metadata is GPL-3.0 licensed unless otherwise stated. Source code included
in tree for individual recipes is under the LICENSE stated in each recipe
(.bb file) unless otherwise stated.
