resource "azurerm_cdn_profile" "cdn" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.app.name
  location            = azurerm_resource_group.app.location

  sku = var.sku
}

resource "azurerm_cdn_endpoint" "cdn" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.app.name
  location            = azurerm_resource_group.app.location
  profile_name        = azurerm_cdn_profile.cdn.name

  origin {
    name      = var.origin_name
    host_name = azurerm_storage_account.storage.primary_web_endpoint
  }
}