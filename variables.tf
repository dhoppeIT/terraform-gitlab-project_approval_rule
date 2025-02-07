variable "approvals_required" {
  type        = number
  description = "The number of approvals required for this rule"
}

variable "name" {
  type        = string
  description = "The name of the approval rule"
}

variable "project" {
  type        = string
  description = "The name or id of the project to add the approval rules"
}

variable "applies_to_all_protected_branches" {
  type        = bool
  default     = false
  description = "Whether the rule is applied to all protected branches"
}

variable "disable_importing_default_any_approver_rule_on_create" {
  type        = bool
  default     = false
  description = "When this flag is set, the default any_approver rule will not be imported if present"
}

variable "group_ids" {
  type        = list(number)
  default     = []
  description = "A list of group IDs whose members can approve of the merge request"
}

variable "protected_branch_ids" {
  type        = list(number)
  default     = []
  description = "A list of protected branch IDs (not branch names) for which the rule applies"
}

variable "report_type" {
  type        = string
  default     = null
  description = "Report type is required when the rule_type is report_approver"

  validation {
    condition = (
      var.report_type == null ||
      var.report_type == "code_coverage"
    )
    error_message = "Valid values are code_coverage"
  }
}

variable "rule_type" {
  type        = string
  default     = "regular"
  description = "The type of rule"

  validation {
    condition     = contains(["regular", "any_approver", "report_approver"], var.rule_type)
    error_message = "Valid values are regular, any_approver, report_approver"
  }
}

variable "user_ids" {
  type        = list(number)
  default     = []
  description = "A list of specific User IDs to add to the list of approvers"
}
