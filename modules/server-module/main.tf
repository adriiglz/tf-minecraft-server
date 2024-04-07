// Grupo de contenedores del servidor
resource "azurerm_container_group" "minecraft_server" {
  name                = "server-containers"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  ip_address_type     = "Public"
  os_type             = "Linux"
  restart_policy      = "Always"

  container {
    name   = "minecraft-container"
    image  = "itzg/minecraft-server"
    cpu    = "2"
    memory = "2"
    
    environment_variables = var.environment_variables

    ports {
      port     = 25565 // Puerto default de Minecraft
      protocol = "TCP"
    }

    volume {
      mount_path           = "/data"
      name                 = "serverdata"
      read_only            = false
      share_name           = azurerm_storage_share.minecraft_share.name
      storage_account_name = azurerm_storage_account.minecraft_storage_acc.name
      storage_account_key  = azurerm_storage_account.minecraft_storage_acc.primary_access_key
    }
  }
}