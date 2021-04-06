variable "projects" {
  type = list(object({
    project_description = string
    project_name        = string
    git_repos = list(object({
      name = string
    }))
  }))
}

variable "visibility" {
  description = "Specifies the visibility of the project."
  type        = string
}

variable "work_item_template" {
  description = "Specifies the work item template."
  type        = string
}
