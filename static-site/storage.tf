resource "azurerm_storage_account" "storage" {
  name                     = "sa${var.app_name}${var.env}"
  resource_group_name      = azurerm_resource_group.app.name
  location                 = azurerm_resource_group.app.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
  account_kind             = "StorageV2"

  static_website {
    index_document     = var.entry_point
    error_404_document = var.error_page
  }
}