resource "dynatrace_autotag" "OS" {
  name = "OS" 
  rules {
    type = "HOST" 
    enabled = true 
    value_format = "{Host:OperatingSystemVersion/[a-zA-Z\\s]++}" 
    conditions {
      key {
        type = "STATIC" 
        attribute = "HOST_OS_TYPE" 
      }
      os_type {
        # negate = false 
        operator = "EXISTS" 
      }
    }
    conditions {
      key {
        type = "STATIC" 
        attribute = "HOST_OS_VERSION" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
    }
  }
}
