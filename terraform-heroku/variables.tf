variable "heroku_account_email" {
    description = "Email for Heroku Account"
    type        = string
}

variable "heroku_api_key" {
    description = "API Key from Heroku Account"
    type        = string
}

variable "heroku_pipeline_name" {}

variable "heroku_region" {}

variable "heroku_staging_app" {}
variable "heroku_staging_database" {}

variable "heroku_production_app" {}
variable "heroku_production_database" {}

variable "heroku_app_buildpacks" {
    type = "list"
}
