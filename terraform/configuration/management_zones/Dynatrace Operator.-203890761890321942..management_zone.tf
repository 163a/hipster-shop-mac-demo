resource "dynatrace_management_zone" "Dynatrace_Operator" {
  name = "Dynatrace Operator" 
  rules {
    type = "CLOUD_APPLICATION_NAMESPACE" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "CLOUD_APPLICATION_NAMESPACE_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "EQUALS" 
        value = "dynatrace" 
      }
    }
  }
  rules {
    type = "CLOUD_APPLICATION" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "CLOUD_APPLICATION_NAMESPACE_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "EQUALS" 
        value = "dynatrace" 
      }
    }
  }
}
