storage "file" {
  path = "/vault/file"
}

# TLS is off for local development only; never expose this listener publicly.
listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = true
}

ui = true

# mlock is often unavailable in Docker Desktop on macOS; without this Vault may not start.
disable_mlock = true
