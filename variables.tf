# ---------------------------------------------------------------------------------------------------------------------
# VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "region" {
  description = "The name of the region"
  default = "eu-west-1"
}

variable "profile" {
  description = "The aws profile"
  
  default = "mackah"
}

variable "lambda_arn" {
  description = "lamdba aws arn"
  
  default = "arn:aws:lambda:eu-west-1:733041935482:function:test_event_rule_func"
}
