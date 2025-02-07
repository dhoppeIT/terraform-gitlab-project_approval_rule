# terraform-gitlab-project_approval_rule

Terraform module to manage the following Twingate resources:

* gitlab_project_approval_rule

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_project_approval_rule" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-project-approval-rule/local"
  version = "1.0.0"

  project            = "example-group-48165/example-project"
  name               = "example-rule"
  approvals_required = 1
}
```

:warning: This feature requires a GitLab Enterprise instance.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project_approval_rule.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_approval_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_applies_to_all_protected_branches"></a> [applies\_to\_all\_protected\_branches](#input\_applies\_to\_all\_protected\_branches) | Whether the rule is applied to all protected branches | `bool` | `false` | no |
| <a name="input_approvals_required"></a> [approvals\_required](#input\_approvals\_required) | The number of approvals required for this rule | `number` | n/a | yes |
| <a name="input_disable_importing_default_any_approver_rule_on_create"></a> [disable\_importing\_default\_any\_approver\_rule\_on\_create](#input\_disable\_importing\_default\_any\_approver\_rule\_on\_create) | When this flag is set, the default any\_approver rule will not be imported if present | `bool` | `false` | no |
| <a name="input_group_ids"></a> [group\_ids](#input\_group\_ids) | A list of group IDs whose members can approve of the merge request | `list(number)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the approval rule | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The name or id of the project to add the approval rules | `string` | n/a | yes |
| <a name="input_protected_branch_ids"></a> [protected\_branch\_ids](#input\_protected\_branch\_ids) | A list of protected branch IDs (not branch names) for which the rule applies | `list(number)` | `[]` | no |
| <a name="input_report_type"></a> [report\_type](#input\_report\_type) | Report type is required when the rule\_type is report\_approver | `string` | `null` | no |
| <a name="input_rule_type"></a> [rule\_type](#input\_rule\_type) | The type of rule | `string` | `"regular"` | no |
| <a name="input_user_ids"></a> [user\_ids](#input\_user\_ids) | A list of specific User IDs to add to the list of approvers | `list(number)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
