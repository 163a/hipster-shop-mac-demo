resource "dynatrace_autotag" "OS_major_version_year" {
  name = "OS major version/year" 
  rules {
    type = "HOST" 
    enabled = true 
    value_format = "{Host:OperatingSystemVersion/[a-zA-Z\\s]++([0-9]++)}" 
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
