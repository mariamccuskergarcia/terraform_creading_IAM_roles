## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.28.1 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_diagnostic_setting.logging](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_role_assignment.account_key_operator](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.blob_data_owner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.site](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azuread_group.target_group](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azurerm_log_analytics_workspace.logging](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_monitor_diagnostic_categories.logging](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/monitor_diagnostic_categories) | data source |
| [azurerm_resource_group.deploy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudid"></a> [cloudid](#input\_cloudid) | Cloud ID of the user | `string` | n/a | yes |
| <a name="input_cohortid"></a> [cohortid](#input\_cohortid) | ID of the cohort | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Cohortid Environment Identifier | `string` | n/a | yes |
| <a name="input_pod"></a> [pod](#input\_pod) | Pod Name | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | prefix for the site name | `string` | n/a | yes |
| <a name="input_target_resource_group"></a> [target\_resource\_group](#input\_target\_resource\_group) | The azure resource group where this storage account & container will be deployed | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | The Azure Storage Account Name |
| <a name="output_storage_account_url"></a> [storage\_account\_url](#output\_storage\_account\_url) | The Azure Storage Account URL |
