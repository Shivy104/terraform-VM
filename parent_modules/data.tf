data "azurerm_subnet" "subnet_id" {
  for_each             = var.nic
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}



data "azurerm_network_interface" "main" {
  for_each            = var.vm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}