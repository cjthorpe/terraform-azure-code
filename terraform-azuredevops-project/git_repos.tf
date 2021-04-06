locals {
  repos = flatten([
    for project in var.projects : [
      for repo in project.git_repos : {
        project_name = project.project_name
        repo_name    = repo.name
      }
    ]
  ])
}

resource "azuredevops_git_repository" "repo" {
  for_each = {
    for item in local.repos : item.repo_name => item
  }

  default_branch = "refs/heads/main"
  initialization {
    init_type = "Clean"
  }

  name = each.value.repo_name

  project_id = azuredevops_project.project[each.value.project_name].id
}
