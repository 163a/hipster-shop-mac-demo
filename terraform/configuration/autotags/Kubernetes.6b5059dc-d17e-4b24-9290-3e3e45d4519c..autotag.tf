resource "dynatrace_autotag" "Kubernetes" {
  name = "Kubernetes" 
  rules {
    type = "HOST" 
    enabled = true 
    conditions {
      custom_host_metadata {
        attribute = "HOST_CUSTOM_METADATA" 
        dynamic_key {
          key = "OperatorVersion" 
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
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_HOST","PROCESS_GROUP_TO_SERVICE"] 
    conditions {
      process_metadata {
        attribute = "PROCESS_GROUP_PREDEFINED_METADATA" 
        dynamic_key = "KUBERNETES_NAMESPACE" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
    }
  }
  rules {
    type = "HOST" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "KUBERNETES_NODE_NAME" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
    }
  }
  rules {
    type = "HOST" 
    enabled = true 
    propagation_types = ["HOST_TO_PROCESS_GROUP_INSTANCE"] 
    conditions {
      key {
        type = "STATIC" 
        attribute = "HOST_PAAS_TYPE" 
      }
      paas_type {
        # negate = false 
        operator = "EQUALS" 
        value = "KUBERNETES" 
      }
    }
  }
}
