resource "dynatrace_autotag" "Namespace" {
  name = "Namespace" 
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_SERVICE"] 
    value_format = "{ProcessGroup:KubernetesNamespace}" 
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
}
