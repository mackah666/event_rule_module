# ---------------------------------------------------------------------------------------------------------------------
# VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "region" {
  description = "The name of the region"
  default = "eu-west-1"
}

variable "event_rule_name" {
  default = "fire-every-minute"
}

variable "lambda_arn" {
  description = "lamdba aws arn"  
  default = "arn:aws:lambda:eu-west-1:733041935482:function:test_event_rule_func"
}



