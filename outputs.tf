output "keypair_pem" {
  value = "${tls_private_key.default.private_key_pem}"
}

output "keypair_pub" {
  value = "${tls_private_key.default.public_key_openssh}"
}

output "keypair_name" {
  value = "${aws_key_pair.generated_keypair.key_name}"
}

output "keypair_fingerprint" {
  value = "${aws_key_pair.generated_keypair.fingerprint}"
}
