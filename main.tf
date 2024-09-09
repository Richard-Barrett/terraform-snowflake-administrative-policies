terraform {
  required_version = ">= 1.5.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.95.0"
    }
  }
}

resource "snowflake_account_parameter" "allow_client_mfa_caching" {
  key   = "ALLOW_CLIENT_MFA_CACHING"
  value = var.allow_client_mfa_caching
}

resource "snowflake_account_parameter" "allow_external_oauth_tokens" {
  key   = "ALLOW_EXTERNAL_OAUTH_TOKENS"
  value = var.allow_external_oauth_tokens
}

resource "snowflake_account_parameter" "allow_id_token" {
  key   = "ALLOW_ID_TOKEN"
  value = var.allow_id_token
}

resource "snowflake_account_parameter" "allow_insecure_connections" {
  key   = "ALLOW_INSECURE_CONNECTIONS"
  value = var.allow_insecure_connections
}

resource "snowflake_account_parameter" "client_memory_limit" {
  key   = "CLIENT_MEMORY_LIMIT"
  value = var.client_memory_limit
}

resource "snowflake_account_parameter" "client_session_keep_alive" {
  key   = "CLIENT_SESSION_KEEP_ALIVE"
  value = var.client_session_keep_alive
}

resource "snowflake_account_parameter" "log_level" {
  key   = "LOG_LEVEL"
  value = var.log_level
}

resource "snowflake_account_parameter" "trace_level" {
  key   = "TRACE_LEVEL"
  value = var.trace_level
}

resource "snowflake_email_notification_integration" "email_integration" {
  name    = "notification"
  comment = "A notification integration."
  enabled = var.enabled

  allowed_recipients = var.allowed_recipients
}
