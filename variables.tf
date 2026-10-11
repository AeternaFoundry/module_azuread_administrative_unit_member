variable "administrative_unit_members" {
  description = <<EOT
Map of administrative_unit_members, attributes below
Optional:
    - administrative_unit_object_id
    - member_object_id
EOT

  type = map(object({
    administrative_unit_object_id = optional(string)
    member_object_id              = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

