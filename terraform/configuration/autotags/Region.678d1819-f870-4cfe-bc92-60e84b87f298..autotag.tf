resource "dynatrace_autotag" "Region" {
  name = "Region" 
  rules {
    type = "HOST" 
    enabled = true 
    value_format = "{Host:Kubernetes:topology.kubernetes.io//region}" 
    conditions {
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
      string_key {
        attribute = "HOST_KUBERNETES_LABELS" 
        dynamic_key = "topology.kubernetes.io/region" 
      }
    }
  }
}
