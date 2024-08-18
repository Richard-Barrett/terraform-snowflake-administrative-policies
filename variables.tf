variable "allow_client_mfa_caching" {
  description = "Allow client MFA caching"
  type        = string
  default     = false
}

variable "allow_external_oauth_tokens" {
  description = "Allow external OAuth tokens"
  type        = string
  default     = false
}

variable "allow_id_token" {
  description = "Allow ID token"
  type        = string
}

variable "allow_insecure_connections" {
  description = "Allow insecure connections"
  type        = string
  default     = false
}

variable "allowed_recipients" {
  type        = list(string)
  description = "'value' is a list of allowed email addresses for the integration. The list must be in the format ['email1', 'email2', ...]. Default is '[]"
  default     = []
}

variable "client_memory_limit" {
  description = "Client memory limit"
  type        = string
  default     = "1000"
}

variable "client_session_keep_alive" {
  description = "Client session keep alive"
  type        = string
  default     = "3600"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "value is a boolean that enables or disables the integration. Default is 'true'"
}

variable "log_level" {
  description = "Log level"
  type        = string
  default     = "INFO"
}

variable "trace_level" {
  description = "Trace level"
  type        = string
  default     = "ON_EVENT"
}
