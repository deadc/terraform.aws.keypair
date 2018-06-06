variable "keypair_name" {
  description = "The keypair name"
  default     = "undefined"
}

variable "keypair_savepath" {
  description = "Directory to save keys files"
  default     = "."
}

variable "ssh_key_algorithm" {
  description = "Algorithm for generate the keys"
  default     = "RSA"
}

variable "private_key_extension" {
  description = "File extension for private key"
  type        = "string"
  default     = "pem"
}

variable "public_key_extension" {
  description = "File extension for public key"
  type        = "string"
  default     = "pub"
}
