# tf_azurerm_allspark_vpc_peer
Terraform module to link two AllSpark VPC configurations in Azure.

## Input variables
  * primary_vpc [required]  - n.b. this is a map of data generated from tf_azurerm_allspark_vpc
  * secondary_vpc [requried]  - n.b. this is a map of data generated from tf_azurerm_allspark_vpc

## Outputs
  * allspark_data - map


## Example use
    module "primary_vpc" {
      source  = "github.com/broomyocymru/tf_azurerm_allspark_vpc"
      name = "primary_vpc"
      bastion_enabled   = "1"
      bastion_config    = {
        username = "AllSparkAdmin"
        password = "A11Spark!"
      }
      subnets = ["10.10.0.0", "10.11.0.0", "10.12.0.0"]
      subnet_names = ["a", "b", "c"]
    }

    module "secondary_vpc" {
      source  = "github.com/broomyocymru/tf_azurerm_allspark_vpc"
      name = "secondary_vpc"
      subnets = ["11.10.0.0", "11.11.0.0", "11.12.0.0"]
      subnet_names = ["d", "e", "f"]
    }

    module "peer" {
      source  = "github.com/broomyocymru/tf_azurerm_allspark_vpc_peer"
      primary_vpc = "${module.primary_vpc.allspark_data}"
      secondary_vpc = "${module.secondary_vpc.allspark_data}"
    }


## License

MIT - see the included LICENSE file for more details.
