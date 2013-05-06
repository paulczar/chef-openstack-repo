name "os-image-api"
description "Glance API service"
run_list(
  "role[os-base]",
  "recipe[os-image::api]"
  )

