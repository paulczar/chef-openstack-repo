name "os-ops-database"
description "Currently MySQL Server (non-ha)"
run_list(
  "role[os-base]",
  "recipe[os-ops-database::server]"
)
