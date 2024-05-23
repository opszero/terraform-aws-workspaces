# outputs of aws workspaces
output "id" {
  value = join("", aws_workspaces_workspace.workspace_ad[*].id)
}

output "ip_address" {
  value = join("", aws_workspaces_workspace.workspace_ad[*].ip_address)
}

output "computer_name" {
  value = join("", aws_workspaces_workspace.workspace_ad[*].computer_name)
}