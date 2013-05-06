name "os-base"
description "OpenStack Base role"
run_list(
  "recipe[apt]",
  "recipe[openssh]",
  "recipe[ntp]"
)
default_attributes(
  "authorization" => {
    "sudo" => {
      "include_sudoers_d" => true
    }
  }
  )
