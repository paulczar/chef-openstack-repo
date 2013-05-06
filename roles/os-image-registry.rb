name "os-image-registry"
description "Glance Registry service"
run_list(
  "role[os-base]",
  "recipe[os-image::registry]"
  )

