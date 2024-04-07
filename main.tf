// Grupo de recursos que contiene la infraestructura del servidor
resource "azurerm_resource_group" "minecraft_server_rg" {
  name     = "minecraft-server"
  location = "France Central"
  tags = {
    application = "Minecraft Server"
    provisioner = "Terraform"
  }
}