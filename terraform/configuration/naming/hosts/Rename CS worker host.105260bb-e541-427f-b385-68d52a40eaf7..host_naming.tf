resource "dynatrace_host_naming" "Rename_CS_worker_host" {
  name = "Rename CS worker host" 
  enabled = true 
  format = "worker-k8s-for-cs ({Host:DetectedName})" 
  conditions {
    condition {
      host_tech {
        # negate = false 
        operator = "EQUALS" 
        value {
          type = "KUBERNETES" 
        }
      }
      key {
        type = "STATIC" 
        attribute = "HOST_TECHNOLOGY" 
      }
    }
    condition {
      key {
        type = "STATIC" 
        attribute = "HOST_DETECTED_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "BEGINS_WITH" 
        value = "iZ" 
      }
    }
  }
}
