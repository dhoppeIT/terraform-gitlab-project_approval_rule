resource "gitlab_project_approval_rule" "this" {
  approvals_required = var.approvals_required
  name               = var.name
  project            = var.project

  applies_to_all_protected_branches                     = var.applies_to_all_protected_branches
  disable_importing_default_any_approver_rule_on_create = var.disable_importing_default_any_approver_rule_on_create
  group_ids                                             = var.group_ids
  protected_branch_ids                                  = length(var.protected_branch_ids) > 0 ? var.protected_branch_ids : null
  report_type                                           = var.report_type
  rule_type                                             = var.rule_type
  user_ids                                              = var.user_ids
}
