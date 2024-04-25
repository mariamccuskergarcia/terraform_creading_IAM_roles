data "azurerm_monitor_diagnostic_categories" "logging" {
  resource_id = azurerm_storage_account.site.id
}

data "azurerm_log_analytics_workspace" "logging" {
  name                = format("log-%s-00", var.cohortid)
  resource_group_name = format("rg-kub%s-hub", var.cohortid) # question
}

resource "azurerm_monitor_diagnostic_setting" "logging" {
  name                       = "logging"
  target_resource_id         = azurerm_storage_account.site.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.logging.id

  dynamic "metric" {
    for_each = data.azurerm_monitor_diagnostic_categories.logging.metrics

    content {
      category = metric.key

      retention_policy {
        enabled = false
        days    = 0
      }
    }
  }
}