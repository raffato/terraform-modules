locals {
  s3          = { for bucket, config in var.s3_configs:
                   bucket => merge(local.s3_defaults, config)
                }
}
