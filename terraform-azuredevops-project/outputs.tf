output "azuredevops_project_name" {
  value = {
    for instance in azuredevops_project.project :
    "projects" => ({ "project name" = instance.name, "project description" = instance.description })...
  }
}

output "azuredevops_git_repo_name" {
  value = {
    for instance in azuredevops_git_repository.repo :
    "repo name" => instance.name...
  }
}

output "azuredevops_git_repo_ssh_url" {
  value = {
    for instance in azuredevops_git_repository.repo :
    "ssh URL" => instance.ssh_url...
  }
}

output "azuredevops_git_repo_remote_url" {
  value = {
    for instance in azuredevops_git_repository.repo :
    "remote URL" => instance.remote_url...
  }
}
