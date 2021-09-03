blueprint "hcp-stack" {
  description = "This is a terraform module for setting up a HashiCorp Cloud Platform environment."
  website = "https://portal.cloud.hashicorp.com/"
  repository = "https://github.com/glenngillen/terraform-blueprint-hcp"
  logo = "https://glenngillen.com/logo.svg"

  inputs = [
    {name = "HCP_CLIENT_ID", label = "HCP Client ID", help = "Generate a [service principal key](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/auth)"},
    {name = "HCP_CLIENT_SECRET", label = "HCP Client Secret", sensitive=true},
    {name = "region", label = "AWS Region", values=["us-east-1", "us-west-2"], type="terraform"}
  ]
}