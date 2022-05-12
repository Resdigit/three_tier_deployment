resource "aws_cloudwatch_metric_alarm" "EC2_CPU_Metric" {
  alarm_name                = "terraform-EC2-CPU_Utilisation"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "3"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "This metric monitors ec2 cpu utilization"
  alarm_actions             = [aws_sns_topic.topic.arn]
  insufficient_data_actions = []
}


 