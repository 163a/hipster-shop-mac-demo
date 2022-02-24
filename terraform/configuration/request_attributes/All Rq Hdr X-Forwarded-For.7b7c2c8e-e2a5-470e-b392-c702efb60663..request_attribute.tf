resource "dynatrace_request_attribute" "All_Rq_Hdr_X-Forwarded-For" {
  name = "All Rq Hdr X-Forwarded-For" 
  enabled = true 
  aggregation = "FIRST" 
  # confidential = false 
  data_type = "STRING" 
  normalization = "ORIGINAL" 
  # skip_personal_data_masking = false 
  data_sources {
    enabled = true 
    capturing_and_storage_location = "CAPTURE_AND_STORE_ON_SERVER" 
    parameter_name = "X-Forwarded-For" 
    source = "REQUEST_HEADER" 
  }
}
