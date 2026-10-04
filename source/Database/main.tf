resource "azurerm_mssql_server" "DB-server" {
  name                         = var.dbs.server.name
  resource_group_name          = var.dbs.server.resource_group_name
  location                     = var.dbs.server.location
  version                      = var.dbs.server.version
  administrator_login          = var.dbs.server.administrator_login
  administrator_login_password = var.dbs.server.administrator_login_password
}

resource "azurerm_mssql_firewall_rule" "firewall" {
  name             = var.dbs.fw-rule.name
  server_id        = azurerm_mssql_server.DB-server.id
  start_ip_address = var.dbs.fw-rule.start_ip_address
  end_ip_address   = var.dbs.fw-rule.end_ip_address
}

resource "azurerm_mssql_database" "Database" {
  name         = var.dbs.database.name
  server_id    = azurerm_mssql_server.DB-server.id
  collation    = var.dbs.database.collation
  license_type = var.dbs.database.license_type
  max_size_gb  = var.dbs.database.max_size_gb
  sku_name     = var.dbs.database.sku_name
  enclave_type = var.dbs.database.enclave_type
}