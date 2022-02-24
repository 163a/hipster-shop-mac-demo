resource "dynatrace_autotag" "Environment" {
  name = "Environment" 
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_HOST","PROCESS_GROUP_TO_SERVICE"] 
    value_format = "{Host:Environment:Environment}" 
    conditions {
      custom_host_metadata {
        attribute = "HOST_CUSTOM_METADATA" 
        dynamic_key {
          key = "Environment" 
          source = "ENVIRONMENT" 
        }
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
    }
  }
}
