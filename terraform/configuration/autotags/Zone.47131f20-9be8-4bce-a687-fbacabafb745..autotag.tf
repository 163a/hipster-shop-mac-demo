resource "dynatrace_autotag" "Zone" {
  name = "Zone" 
  rules {
    type = "HOST" 
    enabled = true 
    value_format = "{Host:Kubernetes:topology.kubernetes.io//zone}" 
    conditions {
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
      string_key {
        attribute = "HOST_KUBERNETES_LABELS" 
        dynamic_key = "topology.kubernetes.io/zone" 
      }
    }
  }
}
