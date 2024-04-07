resource "random_string" "random" {
  length  = 6
  upper   = false
  lower   = true
  numeric = false
  special = false
}

// Cuenta de almacenamiento del servidor
resource "azurerm_storage_account" "minecraft_storage_acc" {
  name                     = "storacc${random_string.random.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

// Almacenamiento del servidor
resource "azurerm_storage_share" "minecraft_share" {
  name                 = "storshare"
  storage_account_name = azurerm_storage_account.minecraft_storage_acc.name
  depends_on           = [azurerm_storage_account.minecraft_storage_acc]
  quota                = 50
}