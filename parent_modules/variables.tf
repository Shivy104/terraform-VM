variable "rg" {
  description = "The name of the resource group"
  type        = map(object({
    name     = string
    location = string
  }))
  
}

variable "vnets" {
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  }))
}

variable "subnets" {
    type = map(object({
        name                 = string
        address_prefixes     = list(string)
        resource_group_name  = string
        virtual_network_name = string
    }))
  
}

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

variable "vm" {
  type = map(object({
    name                  = string
    location              = string
    resource_group_name   = string
    nic_name  =              string
    vm_size               = string

    storage_image_reference = object({
        publisher = string
        offer     = string
        sku       = string
        version   = string
        })

     storage_os_disk = object({
        name              = string
        caching           = string
        create_option     = string
        managed_disk_type = string
     })

        os_profile = object({
            computer_name  = string
            admin_username = string
            admin_password = string
        })



  }))
 
}