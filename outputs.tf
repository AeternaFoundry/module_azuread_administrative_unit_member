output "administrative_unit_members_id" {
  description = "Map of id values across all administrative_unit_members, keyed the same as var.administrative_unit_members"
  value       = { for k, v in azuread_administrative_unit_member.administrative_unit_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "administrative_unit_members_administrative_unit_object_id" {
  description = "Map of administrative_unit_object_id values across all administrative_unit_members, keyed the same as var.administrative_unit_members"
  value       = { for k, v in azuread_administrative_unit_member.administrative_unit_members : k => v.administrative_unit_object_id if v.administrative_unit_object_id != null && length(v.administrative_unit_object_id) > 0 }
}
output "administrative_unit_members_member_object_id" {
  description = "Map of member_object_id values across all administrative_unit_members, keyed the same as var.administrative_unit_members"
  value       = { for k, v in azuread_administrative_unit_member.administrative_unit_members : k => v.member_object_id if v.member_object_id != null && length(v.member_object_id) > 0 }
}

