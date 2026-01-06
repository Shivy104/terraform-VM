rg = {
    "rg1" = {
        name = "rg1"
        location = "Central India"
    }
}

vnets = {
  "vnet1" = {
    name                = "vnet1"
    address_space       = ["10.0.0.0/16"]
    location            = "Central India"
    resource_group_name = "rg1"
  }
}

subnets = {
  "subnet1" = {
    name                 = "subnet1"
    address_prefixes     = ["10.0.1.0/24"]
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
  }
}

nic = {
  "nic1" = {
    nic_name                  = "nic1"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    subnet_name          = "subnet1"
    location             = "Central India"
    ip_configuration = {
      "ipconfig1" = {
        name                          = "internal"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}

vm = {
  "vm1" = {
    name                  = "vm1"
    location              = "Central India"
    resource_group_name   = "rg1"
      nic_name             = "nic1"
    vm_size               = "Standard_B2s"
    storage_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
    storage_os_disk = {
      name              = "myosdisk1"
      caching           = "ReadWrite"
      create_option     = "FromImage"
      managed_disk_type = "Standard_LRS"
    }
    os_profile = {
      computer_name  = "hostname"
      admin_username = "testadmin"
      admin_password = "Password1234!"
    }
  }
}