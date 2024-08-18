terraform {
  required_version = ">= 1.5.6"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1.0"
    }
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.90.0"
    }
  }
}

provider "snowflake" {}

module "snowflake_administrative_settings_for_account" {
  source = "../.." # Path to the root of the module

  allow_client_mfa_caching    = "true"
  allow_external_oauth_tokens = "true"
  allow_id_token              = "true"
  client_memory_limit         = "500"
  client_session_keep_alive   = "1100"
  log_level                   = "ERROR"
  trace_level                 = "ALWAYS"
}
