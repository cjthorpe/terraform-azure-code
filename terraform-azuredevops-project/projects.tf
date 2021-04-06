resource "azuredevops_project" "project" {
  for_each = { for proj in var.projects : proj.project_name => proj }

  description        = each.value.project_description
  name               = each.value.project_name
  visibility         = var.visibility
  work_item_template = var.work_item_template
}

