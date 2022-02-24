resource "dynatrace_alerting_profile" "Hipster_Shop_Alerting" {
  display_name = "Hipster Shop Alerting" 
  mz_id = "-8116405522226392681" 
  rules {
    delay_in_minutes = 0 
    severity_level = "AVAILABILITY" 
    tag_filter {
      include_mode = "NONE" 
    }
  }
  rules {
    delay_in_minutes = 0 
    severity_level = "CUSTOM_ALERT" 
    tag_filter {
      include_mode = "NONE" 
    }
  }
  rules {
    delay_in_minutes = 0 
    severity_level = "ERROR" 
    tag_filter {
      include_mode = "NONE" 
    }
  }
  rules {
    delay_in_minutes = 0 
    severity_level = "MONITORING_UNAVAILABLE" 
    tag_filter {
      include_mode = "NONE" 
    }
  }
  rules {
    delay_in_minutes = 30 
    severity_level = "PERFORMANCE" 
    tag_filter {
      include_mode = "NONE" 
    }
  }
  rules {
    delay_in_minutes = 30 
    severity_level = "RESOURCE_CONTENTION" 
    tag_filter {
      include_mode = "NONE" 
    }
  }
}
