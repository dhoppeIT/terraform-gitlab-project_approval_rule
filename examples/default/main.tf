module "gitlab_project_approval_rule" {
  source = "../../"

  project            = "example-group-48165/example-project"
  name               = "example-rule"
  approvals_required = 1
}
