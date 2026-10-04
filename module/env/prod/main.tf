module "rgm" {
  source = "../../../source/rg"
  rgs    = var.rgm
}

module "dbm" {
  source = "../../../source/Database"
  dbs    = var.dbm
}