resource "dynatrace_notification" "Email" {
  email {
    name = "Email" 
    active = true 
    alerting_profile = "94b21916-05ee-4648-a274-841f8b42d525" 
    body = <<-EOT
      {ProblemDetailsHTML}
      
      {startTime}
      
      Tags: {Tags}
    EOT 
    receivers = ["emailaddresshere@example.com"] 
    subject = "{State} Problem {ProblemID}: {ImpactedEntity} {Tags}" 
  }
}
