resource "azurerm_virtual_network_peering" "primary" {
  name                          = "peer_${var.primary_vpc["vnet_name"]}_${var.secondary_vpc["vnet_name"]}"
  resource_group_name           = "${var.primary_vpc["resource_group_name"]}"
  virtual_network_name          = "${var.primary_vpc["vnet_name"]}"
  remote_virtual_network_id     = "${var.secondary_vpc["vnet_id"]}"
  allow_virtual_network_access  = "${var.bidirectional}"
}
