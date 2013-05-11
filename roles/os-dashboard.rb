name "os-dashboard"
description "Horizon server"
run_list(
  "role[os-base]",
  "recipe[openstack-dashboard::db]",
  "recipe[openstack-dashboard::server]"
  )


override_attributes(
  "openstack" => {
    "role" => {
      "dashboard" => "os-dashboard"
    }
  }
  )
