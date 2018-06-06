#  AWS Keypair Terraform module

Modulo terraform para geração de chaves keypair de acesso a instâncias EC2.

## Como usar

    module "keypair" {
      source            = "modules/terraform.aws.keypair"
      keypair_name      = "enterprise-dev"
    }
