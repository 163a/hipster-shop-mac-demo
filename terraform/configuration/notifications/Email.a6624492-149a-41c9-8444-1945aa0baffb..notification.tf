resource "dynatrace_notification" "Email" {
  email {
    name = "Email" 
    active = true 
    alerting_profile = "b100f6f3-7948-461a-942f-6de4dbd868b8" 
    body = "{ProblemDetailsHTML}" 
    receivers = ["emailaddresshere@example.com"] 
    subject = "{State} Problem {ProblemID}: {ImpactedEntity} - {ProblemURL}" 
  }
}
