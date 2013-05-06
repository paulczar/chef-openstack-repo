name "os-object-storage-management"
description "OpenStack object storage management service"
run_list(
  "role[os-base]",
  "recipe[os-object-storage::management]"
)
