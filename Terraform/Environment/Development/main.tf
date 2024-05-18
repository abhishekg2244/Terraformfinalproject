module "module_rg" {
  source      = "../../Module/resourcegroup"
  rg1variable = var.rgvariable
}

module "module_Vnet" {
    depends_on = [ module.module_rg ]
    source = "../../Module/VirtualNetwork"
    vnetvariable = var.vnetvariable
  
}

module "module_subnet" {
  depends_on = [ module.module_rg , module.module_Vnet ]
  source = "../../Module/Subnet"
  subnetvariable = var.subnetvariable
}

module "module_vm" {
  depends_on = [ module.module_rg,module.module_Vnet,module.module_subnet ]
  source = "../../Module/VirtualMachine"
  vmvariable = var.vmvariable
  
}