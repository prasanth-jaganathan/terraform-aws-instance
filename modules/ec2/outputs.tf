output "instance_id" {
  value = [for instance in aws_instance.test-instance : instance.id]
}
