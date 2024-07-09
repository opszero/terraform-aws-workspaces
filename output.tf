# outputs of aws workspaces directory id
output "ad_id" {
  value = join("", aws_workspaces_directory.main[*].id)
}
