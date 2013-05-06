name "os-object-storage-proxy"
description "OpenStack object storage proxy service"
run_list(
  "role[os-base]",
  "recipe[os-object-storage::proxy]"
  )
