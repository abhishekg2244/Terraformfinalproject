rgvariable = {
  RG1 = {
    name     = "9MAYRG"
    location = "West Europe"
  }
}

vnetvariable = {
  Vnet1 = {
    name                = "dev-Vnet"
    location            = "West Europe"
    resource_group_name = "9MAYRG"
    address_space       = ["10.0.0.0/16"]
  }
}

subnetvariable = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "9MAYRG"
    virtual_network_name = "dev-Vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

}

vmvariable = {
  VM1 ={
  nic-name             = "frontendVM1-nic"
  location            = "West Europe"
  resource_group_name = "9MAYRG"
  size                = "Standard_F2"
  vm-name = "frontendVM1"
  admin_username      = "adminuser"
  admin_password =  "Qwertyuiop@1234"
  datasubnet        = "frontend-subnet"
  virtual_network_name = "dev-Vnet"
  }
  
}