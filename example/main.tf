provider "aws" {
  region = "us-west-2"

}

module "workspace" {
  source = "./../"
  name   = "test"

  ##ad
  subnet_ids                          = []
  vpc_settings                        = { vpc_id : "", subnet_ids : [] }
  ad_name                             = "ad.test.com"
  ad_password                         = "xyz123@abc"
  ip_whitelist                        = ["103.59.207.30/32", ]
  enable_internet_access              = true
  user_enabled_as_local_administrator = true
  ##workspace
  workspace_username = "Administrator"
  bundle_id          = "wsb-g5rbnq51n"

}