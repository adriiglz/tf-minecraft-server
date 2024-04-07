// Muestra la dirección IP de la instancia del servidor
output "minecraft_server_ip" {
  value = module.mc-server-instance.minecraft_server_ip
}