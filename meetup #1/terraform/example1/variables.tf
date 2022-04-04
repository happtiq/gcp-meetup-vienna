variable "org_id" {
  type        = number
  description = "GCP Organization ID"
}

variable "project_id" {
  description = "Name of the GCP Project ID"
  type        = string
}

variable "billing_account" {
  description = "Id of the GCP Billing Account"
  type        = string
}

variable "region" {
  description = "Name of the Region, which the environment will be deployed to (possibly not used by all components, some may use the projects default location)"
  type        = string
}

variable "zone" {
  description = "Name of the Zone, which the environment will be deployed to (possibly not used by all components, some may use the projects default location)"
  type        = string
}