variable "ec2_instance_type_offering_lookup" {
  description = <<EOT
Map of ec2_instance_type_offering_lookup, attributes below
Optional:
    - location_type
    - preferred_instance_types
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    location_type            = optional(string)
    preferred_instance_types = optional(list(string))
    region                   = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

