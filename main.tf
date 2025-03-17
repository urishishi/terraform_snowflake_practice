terraform {
  required_version = "1.11.2"
  required_providers {
    snowflake = {
        source = "Snowflake-Labs/snowflake"
        version = "1.0.4"
    }
  }
}

provider "snowflake" {
  organization_name = "ON44798" # required if not using profile. Can also be set via SNOWFLAKE_ORGANIZATION_NAME env var
  account_name      = "SANDBOX" # required if not using profile. Can also be set via SNOWFLAKE_ACCOUNT_NAME env var
  user              = "YAMAOKA_TERRAFORM_USER" # required if not using profile or token. Can also be set via SNOWFLAKE_USER env var
  password          = ""

  // optional
  role      = "YAMAOKA_TERRAFORM_ROLE"
  # host      = "..."
  # warehouse = "..."
  # params = {
  #   query_tag = "..."
  # }
}

resource "snowflake_database" "yamaoka_terraform_practice_db" {
  name     = "yamaoka_terraform_practice_db"
}
