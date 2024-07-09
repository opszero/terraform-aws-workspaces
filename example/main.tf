provider "aws" {
  region = "us-west-2"

}

module "workspace" {
  source = "./../"
  name   = "ad"
  ##ad
  subnet_ids                          = ["subnet-xxxxxxx", "subnet-xxxxxxxx"]
  vpc_settings                        = { vpc_id : "", subnet_ids : join(",", ["subnet-xxxxxxx", "subnet-xxxxxxxxx"]) }
  ad_name                             = "ad.opszero.com"
  ad_password                         = "xyz123@abc"
  ip_whitelist                        = ["0.0.0.0/0", ]
  enable_internet_access              = true
  user_enabled_as_local_administrator = true

  ##workspace
  enable_workspace = true // first run terraform apply with enable_workspace = false and then create custom user names in workspace manually and specify here that username and re-run tf apply with enable_workspace = true so that workspace with custom-username gets created .

  workspaces = {
    workspace1 = {
      user_name = "admin"
      bundle_id = "wsb-208l8k46h"
    },
    workspace2 = {
      user_name = "admin2"
      bundle_id = "wsb-208l8k46h"
    },
  }
}