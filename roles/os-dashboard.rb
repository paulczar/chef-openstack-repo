name "os-dashboard"
description "Horizon server"
run_list(
  "role[os-base]",
  "recipe[os-dashboard::server]"
  )
