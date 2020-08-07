resource "aws_cloudwatch_event_rule" "event_bridge_rule" {
  name                = var.event_rule_name
  description         = "Fires every one minutes"
  schedule_expression = "rate(1 minute)"
}

resource "aws_cloudwatch_event_target" "event_bridge_rule_target" {
  rule      = aws_cloudwatch_event_rule.event_bridge_rule.name
  target_id = "lambda"
  arn       = var.lambda_arn
}

resource "aws_lambda_permission" "allow_event_rule_to_call_lambda" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name =  var.lambda_arn
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.event_bridge_rule.arn
}