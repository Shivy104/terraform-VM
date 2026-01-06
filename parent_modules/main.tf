module "azurerm_resource_group" {
  source = "../environment/dev/azurerm_rg"
  rg     = var.rg
}

module "vnet" {
  depends_on = [module.azurerm_resource_group]
  source     = "../environment/dev/azurerm_vnet"
  vnets      = var.vnets
}

module "subnets" {
  depends_on = [module.vnet]
  source     = "../environment/dev/azurerm_subnet"
  subnets    = var.subnets
}

module "nic" {
  depends_on = [module.subnets]
  source     = "../environment/dev/azurerm_nic"
  nic        = var.nic
}

module "vm" {
  depends_on = [module.nic]
  source     = "../environment/dev/azurerm_vm"
  vm         = var.vm
}