# data_dog_integration_terraform

A Terraform module that creates the nessisary IAM permissions and roles to allow Data Dog read only access to your AWS account. 

You can follow these steps - or just use this module. 
https://docs.datadoghq.com/integrations/aws/

You'll still need to generate your external ID

## Usage 

```hcl
module "data_dog_integration" {
  source = "github.com/kgirthofer/data_dog_integration_terraform?ref=0.1.0"

  region = "us-west-2"
  external_id = "1234567890123457891234"
}
```

## Variables

- `region` - the Region you want to run - IAM is global so this isn't a big deal. (default: `us-west-2`)
- `external_id` - the external ID that Data Dog will generate. Keep this secret. 

## Outputs

None. 
