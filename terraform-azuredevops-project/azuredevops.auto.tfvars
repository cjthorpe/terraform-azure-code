projects = [
  {
    "git_repos" = [
      {
        "name" : "terraform-azuredevops-project"
      },
      {
        "name" : "terraform-azurerm-storage"
      },
      {
        "name" : "terraform-azurerm-storage-module"
      },
      {
        "name" : "terraform-azuresentinel"
      },
      {
        "name" : "terraform-azure-tags-module"
      }
    ]
    "project_description" : "Repository for the Terraform code that defines the infrastructure used by the Azure Sentinel Strategic solution.",
    "project_name" : "azure-infra"
  },
  {
    "git_repos" = [
      {
        "name" : "sentinel-pipelines"
      }
    ]
    "project_description" : "Repository for the Azure pipelines that provision the analytics queries, workbooks and playbooks within Azure Sentinel.",
    "project_name" : "sentinel-pipelines",
  }
]
visibility         = "private"
work_item_template = "Agile"
