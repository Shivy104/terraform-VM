variable "nic" {
  description = "A map of network interface configurations"
  type = map(object({
    subnet_name              = string
    virtual_network_name           = string
    resource_group_name = string
    nic_name                 = string
    location                 = string
    ip_configuration = map(object({
      name                          = string
      private_ip_address_allocation = string
    }))
    



  }))
}