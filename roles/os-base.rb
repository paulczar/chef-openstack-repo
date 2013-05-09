name "os-base"
description "OpenStack Base role"
run_list(
  "recipe[openstack-common]"
)
