output "vault_id" {
  value       = oci_kms_vault.vault.id
  description = "The OCID of the vault"
}

output "key_id" {
  value       = oci_kms_key.key.id
  description = "The OCID of the key"
}
