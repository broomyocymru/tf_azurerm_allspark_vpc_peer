output "allspark_data" {
  value = {
    peer_id = "${azurerm_virtual_network_peering.primary.id}"
  }
}
