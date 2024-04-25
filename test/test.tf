locals {
  environment = ["sbx", "dev", "test", "prod"] # envs to choose
}

resource "random_string" "pod" {
  length  = 10
  numeric = false
  special = false
  upper   = false
}

module "website" {
  source                = "../." # folder above
  for_each              = toset(local.environment)
  cloudid               = "rico"
  target_resource_group = "ce06_terraform_sa_reusable_mod" # test against this rg
  environment           = each.key
  pod                   = random_string.pod.result
  cohortid              = "ce06"
  prefix                = each.key
  user_write_access     = (each.key == "sbx") ? true : false
}