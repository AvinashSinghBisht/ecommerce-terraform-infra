module "resource_group" {
  source                  = "../../modules/rg"
  rgs    = var.rgs
}

module "storage_account" {
  depends_on               = [module.resource_group] // This is "meta argument"
  source                   = "../../modules/storage_account"
  storage_accounts = var.storage_accounts
}