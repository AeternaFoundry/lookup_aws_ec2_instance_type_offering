data "aws_ec2_instance_type_offering" "ec2_instance_type_offering_lookup" {
  for_each = var.ec2_instance_type_offering_lookup

  location_type            = each.value.location_type
  preferred_instance_types = each.value.preferred_instance_types
  region                   = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

