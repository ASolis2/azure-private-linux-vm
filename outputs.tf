output "private_ip_address" {
  description = "The private IP address of the Linux VM"
  value       = azurerm_network_interface.nic.private_ip_address
}

