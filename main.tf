locals {
  keypair_pub_file = "${format('%s/%s.%s', var.keypair_savepath, var.keypair_name, var.public_key_extension)}"
  keypair_pem_file = "${format('%s/%s.%s', var.keypair_savepath, var.keypair_name, var.private_key_extension)}"
}

resource "tls_private_key" "default" {
  algorithm = "${var.ssh_key_algorithm}"
}

resource "aws_key_pair" "generated_keypair" {
  key_name   = "${var.keypair_name}"
  public_key = "${tls_private_key.default.public_key_openssh}"

  depends_on = ["tls_private_key.default"]
}

resource "local_file" "keypair_pub_file" {
  content  = "${tls_private_key.default.public_key_openssh}"
  filename = "${local.keypair_pub_file}"

  depends_on = ["tls_private_key.default"]
}

resource "local_file" "keypair_pem_file" {
  content  = "${tls_private_key.default.private_key_pem}"
  filename = "${local.keypair_pem_file}"

  depends_on = ["tls_private_key.default"]
}
