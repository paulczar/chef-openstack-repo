name "os-identity"
description "Roll-up role for Keystone"
run_list(
  "role[os-base]",
  "role[os-ops-database]",
  "recipe[openstack-identity::db]",
  "recipe[openstack-identity::server]",
  "recipe[openstack-identity::registration]"
)
