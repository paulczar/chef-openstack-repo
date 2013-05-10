name "os-identity"
description "Roll-up role for Identity"
run_list(
  "role[os-identity-api]",
  "role[os-identity-api-admin]"
  )

override_attributes(
  "openstack" => {
    "role" => {
      "identity" => "os-identity"
    }
  }
  )
