resource "dynatrace_autotag" "Database" {
  name = "Database" 
  rules {
    type = "SERVICE" 
    enabled = true 
    propagation_types = ["SERVICE_TO_PROCESS_GROUP_LIKE","SERVICE_TO_HOST_LIKE"] 
    value_format = "{Service:DatabaseVendor}" 
    conditions {
      key {
        type = "STATIC" 
        attribute = "SERVICE_TYPE" 
      }
      service_type {
        # negate = false 
        operator = "EQUALS" 
        value = "DATABASE_SERVICE" 
      }
    }
    conditions {
      key {
        type = "STATIC" 
        attribute = "SERVICE_DETECTED_NAME" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
    }
  }
}
