resource "dynatrace_autotag" "Hipster_Shop" {
  name = "Hipster Shop" 
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_HOST","PROCESS_GROUP_TO_SERVICE"] 
    conditions {
      key {
        type = "STATIC" 
        attribute = "DOCKER_FULL_IMAGE_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "CONTAINS" 
        value = "gcr" 
      }
    }
  }
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_HOST","PROCESS_GROUP_TO_SERVICE"] 
    conditions {
      key {
        type = "STATIC" 
        attribute = "PROCESS_GROUP_DETECTED_NAME" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "REGEX_MATCHES" 
        value = "hipstershop|grpc" 
      }
    }
  }
  rules {
    type = "SERVICE" 
    enabled = true 
    propagation_types = ["SERVICE_TO_HOST_LIKE","SERVICE_TO_PROCESS_GROUP_LIKE"] 
    conditions {
      key {
        type = "STATIC" 
        attribute = "SERVICE_DETECTED_NAME" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "REGEX_MATCHES" 
        value = "hipstershop|grpc" 
      }
    }
  }
  rules {
    type = "CUSTOM_DEVICE" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "CUSTOM_DEVICE_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "CONTAINS" 
        value = "hipstershop" 
      }
    }
  }
  rules {
    type = "APPLICATION" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "WEB_APPLICATION_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "BEGINS_WITH" 
        value = "Hipster Shop" 
      }
    }
  }
  rules {
    type = "SYNTHETIC_TEST" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "BROWSER_MONITOR_NAME" 
      }
      string {
        case_sensitive = true 
        # negate = false 
        operator = "BEGINS_WITH" 
        value = "Hipster Shop" 
      }
    }
  }
}
