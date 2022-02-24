resource "dynatrace_autotag" "HostGroup" {
  name = "HostGroup" 
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    value_format = "{HostGroup:Name}" 
    conditions {
      key {
        type = "STATIC" 
        attribute = "HOST_GROUP_NAME" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
    }
  }
}
