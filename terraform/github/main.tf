resource "github_repository" "example" {
  name        = var.repo_name
  description = "My awesome codebase"

  visibility = "public"
}

resource "github_repository_file" "example" {
  repository          = var.repo_name
  branch              = "main"
  file                = "README.md"
  content             = file("${path.module}/files/README.md")
  commit_message      = "Init commit by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@example.com"
  overwrite_on_create = true
}

module "repository" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = var.repo_name
  license_template   = "mit"
  gitignore_template = "Terraform"
}