output "allspark_data" {
  value = {
    primary_id = "${azurerm_virtual_network_peering.primary.id}"
    secondary_id = "${azurerm_virtual_network_peering.secondary.id}"
  }
}
