
output "deployment_id" {
  value = random_id.deployment_id.hex
}

output "app_fqdn" {
  value = aws_alb.alb.dns_name
}

output "app_mgmt_ip" {
  value = aws_eip.app-mgmt-eip.public_ip
}

output "app_agwe_id" {
  value = jsondecode(data.local_file.agwe.content).agwe_id
}
