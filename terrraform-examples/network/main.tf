module "management_network" {
  source = "git@github.com:twindb/twindb-terraform-modules.git//network"
  environment = "testing"
  dest_app_name = "test_application"
  vpc_subnets_cidr_blocks = "${var.vpc_default_subnet_cidr_blocks}"
  public_subnet_tag = "${var.default_public_subnet_tag}"
  private_subnet_tag = "${var.default_private_subnet_tag}"
  default_rt_tag = "${var.default_rt_table_tag}"
  private_rt_tag = "${var.default_private_rt_tag}"
  vpc_tags = "${var.vpc_tags}"
  vpc_cidr_block = "${var.vpc_address}"
  create_nat = 0
}