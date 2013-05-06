# Description #

This repository contains examples of the roles, environments and other supporting files for deploying an OpenStack **Grizzly** reference architecture using Chef. This currently includes the 7 OpenStack core projects: Compute, Dashboard, Identity, Image, Network and Object and Block Storage.

Development of the latest Stable release will continue on the `grizzly` branch and releases tagged with `2013.1.X`. Once `master` branch work begins, it will happen on the `master` branch and fork into the `havana` branch once released.

The documentation has been moved to the https://github.com/mattray/openstack-chef-docs repository. This will be merged to https://github.com/opscode/chef-docs and eventually released to https://docs.opscode.com. Instructions for building the docs are included in the repository.

# Usage #

This repository uses Berkshelf (https://berkshelf.com) to manage downloading all of the proper cookbook versions, whether from Git or from the Opscode Community site (https://community.opscode.com). The preference is to eventually upstream all cookbook dependencies to the Opscode Community site. The [Berksfile](Berksfile) lists the current dependencies.

There is a Spiceweasel (http://bit.ly/spcwsl) [infrastructure.yml](infrastructure.yml) manifest documenting all the roles and environments required to deploy OpenStack.

To see the commands necessary to push all of the files to the Chef server, run the following command:

```
spiceweasel infrastructure.yml
```

To actually deploy the repository to your Chef server, run the following command:

```
spiceweasel -e infrastructure.yml
```

# Cookbooks #

The cookbooks have been designed and written in such a way that they can be used to deploy individual service components on _any_ of the nodes in the infrastructure; in short they can be used for single node 'all-in-one' installs (for testing), right up to multi/many node production installs. In order to achieve this flexibility, they are configured by attributes which may be used to override search. Chef 11 is required because of the use of features such as [partial search](http://docs.opscode.com/essentials_search_partial.html). Ruby 1.9.x is considered the minimum supported version of Ruby as well. Most users of this repository test with the full-stack Chef 11 client and a Chef server (Chef Solo is not explicity supported).

Each of the OpenStack services has its own cookbook and is available on the Chef Community site and on GitHub.

## OpenStack Block Storage ##

http://github.com/mattray/cookbook-openstack-block-storage/

There is further documentation in the [OpenStack Block Storage cookbook README](http://github.com/mattray/cookbook-openstack-block-storage/).

## OpenStack Compute ##

http://github.com/mattray/cookbook-openstack-compute/

There is further documentation in the [OpenStack Compute cookbook README](http://github.com/mattray/cookbook-openstack-compute/).

## OpenStack Dashboard ##

http://github.com/mattray/cookbook-openstack-dashboard/

There is further documentation in the [OpenStack Dashboard cookbook README](http://github.com/mattray/cookbook-openstack-dashboard/).

## OpenStack Identity ##

http://github.com/mattray/cookbook-openstack-identity/

There is further documentation in the [OpenStack Identity cookbook README](http://github.com/mattray/cookbook-openstack-identity/).

## OpenStack Image ##

http://github.com/mattray/cookbook-openstack-image/

There is further documentation in the [OpenStack Image cookbook README](http://github.com/mattray/cookbook-openstack-image/).

## OpenStack Network ##

Http://github.com/mattray/cookbook-openstack-network/

There is further documentation in the [OpenStack Network cookbook README](http://github.com/mattray/cookbook-openstack-network/).

## OpenStack Object Storage ##

http://github.com/mattray/cookbook-openstack-object-storage/

There is further documentation in the [OpenStack Object Storage cookbook README](http://github.com/mattray/cookbook-openstack-object-storage/).

# License and Author #

|                      |                                          |
|:---------------------|:-----------------------------------------|
| **Original Author**  | Matt Ray (<matt@opscode.com>)            |
|                      |                                          |
| **Copyright**        | Copyright (c) 2011-2013 Opscode, Inc.    |

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
