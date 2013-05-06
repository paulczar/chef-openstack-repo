name "os-identity"
description "Roll-up role for Keystone"
run_list(
  "role[os-identity-api]",
  "role[os-identity-api-admin]"
  )

