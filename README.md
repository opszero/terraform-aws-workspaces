<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ad_name"></a> [ad\_name](#input\_ad\_name) | The fully qualified name for the directory, such as corp.example.com | `string` | `"corp.example.com"` | no |
| <a name="input_ad_password"></a> [ad\_password](#input\_ad\_password) | The password for the directory administrator or connector user. | `string` | `"xyzsf58f5fqar"` | no |
| <a name="input_ad_size"></a> [ad\_size](#input\_ad\_size) | The size of the directory (Small or Large are accepted values). | `string` | `"Small"` | no |
| <a name="input_alias"></a> [alias](#input\_alias) | The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values). | `string` | `""` | no |
| <a name="input_change_compute_type"></a> [change\_compute\_type](#input\_change\_compute\_type) | Whether WorkSpaces directory users can change the compute type (bundle) for their workspace. | `bool` | `true` | no |
| <a name="input_connect_settings"></a> [connect\_settings](#input\_connect\_settings) | (Required for ADConnector) Connector related information about the directory. Fields documented below. | `map(string)` | `{}` | no |
| <a name="input_custom_policy"></a> [custom\_policy](#input\_custom\_policy) | Custom policy ARN | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | A textual description for the directory. | `string` | `"Default Active Directory"` | no |
| <a name="input_device_type_android"></a> [device\_type\_android](#input\_device\_type\_android) | Indicates whether users can use Android devices to access their WorkSpaces. | `string` | `"ALLOW"` | no |
| <a name="input_device_type_chromeos"></a> [device\_type\_chromeos](#input\_device\_type\_chromeos) | Indicates whether users can use Chromebooks to access their WorkSpaces. | `string` | `"ALLOW"` | no |
| <a name="input_device_type_ios"></a> [device\_type\_ios](#input\_device\_type\_ios) | Indicates whether users can use iOS devices to access their WorkSpaces. | `string` | `"ALLOW"` | no |
| <a name="input_device_type_linux"></a> [device\_type\_linux](#input\_device\_type\_linux) | Indicates whether users can use Linux devices to access their WorkSpaces. | `string` | `"ALLOW"` | no |
| <a name="input_device_type_osx"></a> [device\_type\_osx](#input\_device\_type\_osx) | Indicates whether users can use macOS clients to access their WorkSpaces. | `string` | `"ALLOW"` | no |
| <a name="input_device_type_web"></a> [device\_type\_web](#input\_device\_type\_web) | Indicates whether users can access their WorkSpaces through a web browser. | `string` | `"ALLOW"` | no |
| <a name="input_device_type_windows"></a> [device\_type\_windows](#input\_device\_type\_windows) | Indicates whether users can use Windows clients to access their WorkSpaces. | `string` | `"ALLOW"` | no |
| <a name="input_device_type_zeroclient"></a> [device\_type\_zeroclient](#input\_device\_type\_zeroclient) | Indicates whether users can use zero client devices to access their WorkSpaces. | `string` | `"ALLOW"` | no |
| <a name="input_edition"></a> [edition](#input\_edition) | The MicrosoftAD edition (Standard or Enterprise). | `string` | `"Standard"` | no |
| <a name="input_enable_internet_access"></a> [enable\_internet\_access](#input\_enable\_internet\_access) | (optional) Whether workspace virtual desktops should have internet access. Note that a VPC internet gateway is not required. | `bool` | `true` | no |
| <a name="input_enable_maintenance_mode"></a> [enable\_maintenance\_mode](#input\_enable\_maintenance\_mode) | Indicates whether maintenance mode is enabled for your WorkSpaces. | `bool` | `true` | no |
| <a name="input_enable_sso"></a> [enable\_sso](#input\_enable\_sso) | Whether to enable single-sign on for the directory. Requires alias. | `bool` | `false` | no |
| <a name="input_enable_workspace"></a> [enable\_workspace](#input\_enable\_workspace) | Flag to control the module creation. | `bool` | `false` | no |
| <a name="input_increase_volume_size"></a> [increase\_volume\_size](#input\_increase\_volume\_size) | Whether WorkSpaces directory users can increase the volume size of the drives on their workspace. | `bool` | `true` | no |
| <a name="input_ip_whitelist"></a> [ip\_whitelist](#input\_ip\_whitelist) | List of IP's to for whitelist | `list(string)` | <pre>[<br/>  "103.59.207.249/32"<br/>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_rebuild_workspace"></a> [rebuild\_workspace](#input\_rebuild\_workspace) | Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state. | `bool` | `true` | no |
| <a name="input_restart_workspace"></a> [restart\_workspace](#input\_restart\_workspace) | Whether WorkSpaces directory users can restart their workspace. | `bool` | `true` | no |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | (optional) If a security group should not be created, the security group id to use. Requires that `create_security_group` be set to `false` | `string` | `null` | no |
| <a name="input_short_name"></a> [short\_name](#input\_short\_name) | The short name of the directory, such as CORP. | `string` | `"CORP"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | VPC Subnet IDs to create workspaces in | `list(string)` | n/a | yes |
| <a name="input_switch_running_mode"></a> [switch\_running\_mode](#input\_switch\_running\_mode) | Whether WorkSpaces directory users can switch the running mode of their workspace. | `bool` | `true` | no |
| <a name="input_type"></a> [type](#input\_type) | The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values). | `string` | `"SimpleAD"` | no |
| <a name="input_user_enabled_as_local_administrator"></a> [user\_enabled\_as\_local\_administrator](#input\_user\_enabled\_as\_local\_administrator) | Indicates whether users are local administrators of their WorkSpaces. | `bool` | `true` | no |
| <a name="input_vpc_settings"></a> [vpc\_settings](#input\_vpc\_settings) | (Required for SimpleAD and MicrosoftAD) VPC related information about the directory. Fields documented below. | `map(string)` | `{}` | no |
| <a name="input_workspaces"></a> [workspaces](#input\_workspaces) | Map of workspace configurations | <pre>map(object({<br/>    bundle_id                                 = string<br/>    user_name                                 = string<br/>    root_volume_encryption_enabled            = optional(bool, false)<br/>    user_volume_encryption_enabled            = optional(bool, false)<br/>    volume_encryption_key                     = optional(string, null)<br/>    compute_type_name                         = optional(string, "VALUE")<br/>    user_volume_size_gib                      = optional(number, 10)<br/>    root_volume_size_gib                      = optional(number, 80)<br/>    running_mode                              = optional(string, "AUTO_STOP")<br/>    running_mode_auto_stop_timeout_in_minutes = optional(number, 60)<br/>  }))</pre> | `{}` | no |
## Resources

| Name | Type |
|------|------|
| [aws_directory_service_directory.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/directory_service_directory) | resource |
| [aws_iam_role.workspaces_default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.workspaces_custom_s3_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.workspaces_default_self_service_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.workspaces_default_service_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_workspaces_directory.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_directory) | resource |
| [aws_workspaces_ip_group.ipgroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_ip_group) | resource |
| [aws_workspaces_workspace.workspace_ad](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_workspace) | resource |
| [aws_iam_policy_document.workspaces](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_workspaces_bundle.bundle](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/workspaces_bundle) | data source |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ad_id"></a> [ad\_id](#output\_ad\_id) | outputs of aws workspaces directory id |
# 🚀 Built by opsZero!

<a href="https://opszero.com"><img src="https://opszero.com/wp-content/uploads/2024/07/opsZero_logo_svg.svg" width="300px"/></a>

Since 2016 [opsZero](https://opszero.com) has been providing Kubernetes
expertise to companies of all sizes on any Cloud. With a focus on AI and
Compliance we can say we seen it all whether SOC2, HIPAA, PCI-DSS, ITAR,
FedRAMP, CMMC we have you and your customers covered.

We provide support to organizations in the following ways:

- [Modernize or Migrate to Kubernetes](https://opszero.com/solutions/modernization/)
- [Cloud Infrastructure with Kubernetes on AWS, Azure, Google Cloud, or Bare Metal](https://opszero.com/solutions/cloud-infrastructure/)
- [Building AI and Data Pipelines on Kubernetes](https://opszero.com/solutions/ai/)
- [Optimizing Existing Kubernetes Workloads](https://opszero.com/solutions/optimized-workloads/)

We do this with a high-touch support model where you:

- Get access to us on Slack, Microsoft Teams or Email
- Get 24/7 coverage of your infrastructure
- Get an accelerated migration to Kubernetes

Please [schedule a call](https://calendly.com/opszero-llc/discovery) if you need support.

<br/><br/>

<div style="display: block">
  <img src="https://opszero.com/wp-content/uploads/2024/07/aws-advanced.png" width="150px" />
  <img src="https://opszero.com/wp-content/uploads/2024/07/AWS-public-sector.png" width="150px" />
  <img src="https://opszero.com/wp-content/uploads/2024/07/AWS-eks.png" width="150px" />
</div>
<!-- END_TF_DOCS -->