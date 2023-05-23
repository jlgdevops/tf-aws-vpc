# tf-aws-vpc
Module Terraform pour le déploiement d'un VPC sur AWS

## A propos de ce module
Ce module permet la creation des resources AWS suivantes:

- 1 `aws_vpc`.
- 1 `aws_internet_gateway` attaché au VPC.
- 1 `aws_route_table` routant tout le trafic à travers l'IGW.
- X `aws_subnet` à l'intérieur du VPC qui sont associés à la table de routage. Le nombre de sous-réseaux et le bloc CIDR associé est défini par la variable `subnets_cidr`.

## Comment utiliser ce module

Exemple de base :

```hcl
module "vpc" {
  source = "github.com/jlgdevops/tf-aws-vpc"
  vpc_cidr = "10.1.0.0/16"
}
```

Définition des sous-réseaux à déployer dans le VPC (3 ici) :

```hcl
module "vpc" {
  source = "github.com/jlgdevops/tf-aws-vpc"
  vpc_cidr = "10.1.0.0/16"
  subnets_cidr = ["10.1.0.0/24", "10.1.1.0/24", "10.1.2.0/24"]
}
```
