variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

# Workspaces directory settings
variable "enable_internet_access" {
  type        = bool
  description = "(optional) Whether workspace virtual desktops should have internet access. Note that a VPC internet gateway is not required."
  default     = true
}
variable "security_group_id" {
  type        = string
  description = "(optional) If a security group should not be created, the security group id to use. Requires that `create_security_group` be set to `false`"
  default     = null
}

variable "subnet_ids" {
  type        = list(string)
  description = "VPC Subnet IDs to create workspaces in"
}

#Description : Active Directory Terraform modules variables
variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the module creation."
}

variable "vpc_settings" {
  type        = map(string)
  default     = {}
  description = "(Required for SimpleAD and MicrosoftAD) VPC related information about the directory. Fields documented below."

}

variable "connect_settings" {
  type        = map(string)
  default     = {}
  description = "(Required for ADConnector) Connector related information about the directory. Fields documented below."

}

variable "ad_name" {
  default     = "corp.example.com"
  type        = string
  description = " The fully qualified name for the directory, such as corp.example.com"
}

variable "ad_password" {
  default     = "xyzsf58f5fqar"
  type        = string
  description = "The password for the directory administrator or connector user."
  sensitive   = true
}

variable "ad_size" {
  default     = "Small"
  type        = string
  description = "The size of the directory (Small or Large are accepted values)."
}

variable "ip_whitelist" {
  default     = ["51.79.69.69/32"]
  type        = list(string)
  description = "List of IP's to for whitelist"
}

variable "custom_policy" {
  default     = ""
  type        = string
  description = "Custom policy ARN"
}


variable "change_compute_type" {
  default     = true
  type        = bool
  description = "Whether WorkSpaces directory users can change the compute type (bundle) for their workspace."
}

variable "increase_volume_size" {
  default     = true
  type        = bool
  description = "Whether WorkSpaces directory users can increase the volume size of the drives on their workspace."
}

variable "rebuild_workspace" {
  default     = true
  type        = bool
  description = "Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state."
}

variable "restart_workspace" {
  default     = true
  type        = bool
  description = "Whether WorkSpaces directory users can restart their workspace."
}

variable "switch_running_mode" {
  default     = true
  type        = bool
  description = "Whether WorkSpaces directory users can switch the running mode of their workspace."
}

variable "device_type_android" {
  default     = "ALLOW"
  type        = string
  description = " Indicates whether users can use Android devices to access their WorkSpaces."
}

variable "device_type_linux" {
  default     = "ALLOW"
  type        = string
  description = " Indicates whether users can use Linux devices to access their WorkSpaces."
}

variable "device_type_chromeos" {
  default     = "ALLOW"
  type        = string
  description = "Indicates whether users can use Chromebooks to access their WorkSpaces."
}

variable "device_type_ios" {
  default     = "ALLOW"
  type        = string
  description = "Indicates whether users can use iOS devices to access their WorkSpaces."
}

variable "device_type_osx" {
  default     = "ALLOW"
  type        = string
  description = "Indicates whether users can use macOS clients to access their WorkSpaces."
}

variable "device_type_web" {
  default     = "ALLOW"
  type        = string
  description = "Indicates whether users can access their WorkSpaces through a web browser."
}

variable "device_type_windows" {
  default     = "ALLOW"
  type        = string
  description = "Indicates whether users can use Windows clients to access their WorkSpaces."
}

variable "device_type_zeroclient" {
  default     = "ALLOW"
  type        = string
  description = "Indicates whether users can use zero client devices to access their WorkSpaces."
}

variable "enable_maintenance_mode" {
  default     = false
  type        = bool
  description = "Indicates whether maintenance mode is enabled for your WorkSpaces."
}

variable "user_enabled_as_local_administrator" {
  default     = false
  type        = bool
  description = "Indicates whether users are local administrators of their WorkSpaces."
}

variable "type" {
  default     = "SimpleAD"
  type        = string
  description = "The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values)."
}

variable "enable_sso" {
  default     = false
  type        = bool
  description = "Whether to enable single-sign on for the directory. Requires alias."
}

variable "alias" {
  default     = ""
  type        = string
  description = "The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values)."
}

variable "description" {
  default     = "Default Active Directory"
  type        = string
  description = "A textual description for the directory."
}

variable "short_name" {
  default     = "CORP"
  type        = string
  description = "The short name of the directory, such as CORP."
}

variable "edition" {
  default     = "Standard"
  type        = string
  description = "The MicrosoftAD edition (Standard or Enterprise)."
}


#variables : AWS WorkSpaces Terraform modules
variable "bundle_id" {
  default     = "wsb-bjnjksxt14"
  type        = string
  description = "The ID of the bundle for the WorkSpace."
}

variable "workspace_username" {
  default     = "Administrator"
  type        = string
  description = "The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace."
}

variable "directory_id" {
  default     = ""
  type        = string
  description = "The ID of the directory for the WorkSpace."
}

variable "volume_encryption_key" {
  default     = null
  type        = string
  description = "The symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs."
}

variable "root_volume_encryption_enabled" {
  default     = false
  type        = bool
  description = "Indicates whether the data stored on the root volume is encrypted."
}

variable "user_volume_encryption_enabled" {
  default     = false
  type        = bool
  description = "Indicates whether the data stored on the user volume is encrypted."
}

variable "compute_type_name" {
  default     = "VALUE"
  type        = string
  description = "The compute type. For more information, see Amazon WorkSpaces Bundles. Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO and GRAPHICSPRO."
}

variable "user_volume_size_gib" {
  default     = 10
  type        = number
  description = "The size of the root volume."
}

variable "root_volume_size_gib" {
  default     = 80
  type        = number
  description = "The size of the root volume."
}

variable "running_mode" {
  default     = "AUTO_STOP"
  type        = string
  description = "The running mode. For more information, see Manage the WorkSpace Running Mode. Valid values are AUTO_STOP and ALWAYS_ON."
}

variable "running_mode_auto_stop_timeout_in_minutes" {
  default     = 60
  type        = number
  description = "The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
}

variable "region" {
  type    = string
  default = null
}