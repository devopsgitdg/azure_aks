resource "azurerm_kubernetes_cluster" "dg-kube" {
  name                = "dg-aks1"
  location            = azurerm_resource_group.dg_rgp.location
  resource_group_name = azurerm_resource_group.dg_rgp.name
  dns_prefix          = "dgaks1"

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}