// Referencia al módulo en el que hice la instancia del servidor (mc-server-instance)
module "mc-server-instance" {
  source                  = "./modules/mc-server-instance"
  resource_group_name     = azurerm_resource_group.minecraft_server_rg.name
  resource_group_location = azurerm_resource_group.minecraft_server_rg.location
}