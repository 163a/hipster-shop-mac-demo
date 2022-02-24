resource "dynatrace_autotag" "Dynatrace" {
  name = "Dynatrace" 
  rules {
    type = "HOST" 
    enabled = true 
    propagation_types = ["HOST_TO_PROCESS_GROUP_INSTANCE"] 
    conditions {
      key {
        type = "STATIC" 
        attribute = "HOST_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "BEGINS_WITH" 
        value = "Dynatrace" 
      }
    }
  }
}
