output "event_bridge_rule_arn" {
  value = aws_cloudwatch_event_rule.event_bridge_rule.arn
}

output "event_bridge_rule_target" {
  value = aws_cloudwatch_event_target.event_bridge_rule_target.arn
}

# output "event_bridge_rule_state" {
#   value = aws_cloudwatch_event_rule.event_bridge_rule.State
# }




