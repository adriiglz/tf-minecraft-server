// Mostrar la IP del servidor en consola
output "minecraft_server_ip" {
  value = azurerm_container_group.minecraft_server.ip_address
}