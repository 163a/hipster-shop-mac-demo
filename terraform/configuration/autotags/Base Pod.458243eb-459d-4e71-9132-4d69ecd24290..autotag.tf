resource "dynatrace_autotag" "Base_Pod" {
  name = "Base Pod" 
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_SERVICE"] 
    value_format = "{ProcessGroup:KubernetesBasePodName}" 
    conditions {
      process_metadata {
        attribute = "PROCESS_GROUP_PREDEFINED_METADATA" 
        dynamic_key = "KUBERNETES_BASE_POD_NAME" 
      }
      string {
        # case_sensitive = false 
        # negate = false 
        operator = "EXISTS" 
      }
    }
  }
}
