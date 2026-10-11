output "ec2_instance_type_offering_lookup_id" {
  description = "Map of id values across all ec2_instance_type_offering_lookup, keyed the same as var.ec2_instance_type_offering_lookup"
  value       = { for k, v in data.aws_ec2_instance_type_offering.ec2_instance_type_offering_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_instance_type_offering_lookup_filter" {
  description = "Map of filter values across all ec2_instance_type_offering_lookup, keyed the same as var.ec2_instance_type_offering_lookup"
  value       = { for k, v in data.aws_ec2_instance_type_offering.ec2_instance_type_offering_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_instance_type_offering_lookup_instance_type" {
  description = "Map of instance_type values across all ec2_instance_type_offering_lookup, keyed the same as var.ec2_instance_type_offering_lookup"
  value       = { for k, v in data.aws_ec2_instance_type_offering.ec2_instance_type_offering_lookup : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "ec2_instance_type_offering_lookup_location" {
  description = "Map of location values across all ec2_instance_type_offering_lookup, keyed the same as var.ec2_instance_type_offering_lookup"
  value       = { for k, v in data.aws_ec2_instance_type_offering.ec2_instance_type_offering_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "ec2_instance_type_offering_lookup_location_type" {
  description = "Map of location_type values across all ec2_instance_type_offering_lookup, keyed the same as var.ec2_instance_type_offering_lookup"
  value       = { for k, v in data.aws_ec2_instance_type_offering.ec2_instance_type_offering_lookup : k => v.location_type if v.location_type != null && length(v.location_type) > 0 }
}
output "ec2_instance_type_offering_lookup_preferred_instance_types" {
  description = "Map of preferred_instance_types values across all ec2_instance_type_offering_lookup, keyed the same as var.ec2_instance_type_offering_lookup"
  value       = { for k, v in data.aws_ec2_instance_type_offering.ec2_instance_type_offering_lookup : k => v.preferred_instance_types if v.preferred_instance_types != null && length(v.preferred_instance_types) > 0 }
}
output "ec2_instance_type_offering_lookup_region" {
  description = "Map of region values across all ec2_instance_type_offering_lookup, keyed the same as var.ec2_instance_type_offering_lookup"
  value       = { for k, v in data.aws_ec2_instance_type_offering.ec2_instance_type_offering_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

