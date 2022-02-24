resource "dynatrace_management_zone" "Hipster_Shop" {
  name = "Hipster Shop" 
  rules {
    type = "SERVICE" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "SERVICE_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Hipster Shop" 
        }
      }
    }
  }
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "PROCESS_GROUP_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Hipster Shop" 
        }
      }
    }
  }
  rules {
    type = "HOST" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "HOST_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Hipster Shop" 
        }
      }
    }
  }
  rules {
    type = "CUSTOM_DEVICE" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "CUSTOM_DEVICE_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Hipster Shop" 
        }
      }
    }
  }
  rules {
    type = "CUSTOM_DEVICE_GROUP" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "CUSTOM_DEVICE_GROUP_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Hipster Shop" 
        }
      }
    }
  }
  rules {
    type = "WEB_APPLICATION" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "WEB_APPLICATION_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Hipster Shop" 
        }
      }
    }
  }
  rules {
    type = "BROWSER_MONITOR" 
    enabled = true 
    conditions {
      key {
        type = "STATIC" 
        attribute = "BROWSER_MONITOR_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Hipster Shop" 
        }
      }
    }
  }
  rules {
    type = "KUBERNETES_CLUSTER" 
    # enabled = false 
    conditions {
      key {
        type = "STATIC" 
        attribute = "KUBERNETES_CLUSTER_NAME" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
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
        value = "default" 
      }
    }
  }
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
        value = "default" 
      }
    }
  }
}
