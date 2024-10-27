resource "oci_kms_vault" "vault" {
  compartment_id = var.compartment_id
  display_name   = var.vault_name
  vault_type     = var.vault_type
}

resource "oci_kms_key" "key" {
  compartment_id = var.compartment_id
  display_name   = var.key_name
  key_shape {
    algorithm = "AES"
    length    = 32
  }
  management_endpoint = oci_kms_vault.vault.management_endpoint
}

# IAM policy to allow OKE to access the vault
resource "oci_identity_policy" "oke_vault_policy" {
  name           = "OKEVaultAccess"
  description    = "Allow OKE to access the vault"
  compartment_id = var.compartment_id

  statements = [
    "Allow dynamic-group ${var.oke_nodes_dynamic_group_name} to use secret-family in compartment id ${var.compartment_id}",
    "Allow dynamic-group ${var.oke_nodes_dynamic_group_name} to use vaults in compartment id ${var.compartment_id}",
    "Allow dynamic-group ${var.oke_nodes_dynamic_group_name} to use keys in compartment id ${var.compartment_id}"
  ]
}
