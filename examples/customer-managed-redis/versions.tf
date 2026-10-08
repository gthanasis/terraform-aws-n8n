terraform {
  # Matches the module's own floor (1.12, for short-circuit evaluation of &&
  # and ||; see the root versions.tf). Worth knowing that this example cannot
  # go below 1.11 even if the module ever did: its test suite
  # (tests/defaults.tftest.hcl) uses override_resource's override_during
  # attribute, which Terraform only gained in 1.11 and silently ignores
  # before it, turning the documented `terraform test` command into a
  # confusing assertion failure rather than a clear version error.
  required_version = ">= 1.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 3.0"
    }
  }
}
