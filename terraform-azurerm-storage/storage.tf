module "storage" {
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
  container_access_type    = var.container_access_type
  environment              = var.environment
  project_service          = var.project_service
  region                   = var.region
  resource_group_name      = var.resource_group_name
  source                   = "git@github.com:cjthorpe/terraform-azure-modules//azurerm-storage-module"
  storage_account_name     = var.storage_account_name
  storage_container_name   = var.storage_container_name
}
