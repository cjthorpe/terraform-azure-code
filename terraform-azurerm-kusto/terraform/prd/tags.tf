module "tags" {
  environment     = var.environment
  project_service = var.project_service
  source          = "git@github.com:cjthorpe/terraform-azure-modules//terraform-azure-tags-module"
}
