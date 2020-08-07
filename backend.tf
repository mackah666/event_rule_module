terraform {
  backend "s3" {
    bucket = "mackah666-s3-bucket"
    key    = "path/to/my/event_bridge_rule_key"
    region = "eu-west-1"
  } 
}