rgm = {
  name     = "rg-jbp-db-ci-01"
  location = "centralindia"
}

dbm = {
  server = {
    name                         = "jbpdb-server"
    resource_group_name          = "rg-jbp-db-ci-01"
    location                     = "centralindia"
    version                      = "12.0"
    administrator_login          = "jbpdb"
    administrator_login_password = "sode@12345678"
  }

  fw-rule = {
    name             = "FirewallRule1"
    start_ip_address = "152.59.67.61"
    end_ip_address   = "152.59.67.61"
  }

  database = {
    name         = "jbp-db"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 2
    sku_name     = "Basic"
    enclave_type = "VBS"
  }
}