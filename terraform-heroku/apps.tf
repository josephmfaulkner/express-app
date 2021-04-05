
resource "heroku_app" "staging" {
  name   = "${var.heroku_staging_app}"
  region = "${var.heroku_region}"

  config_vars = {
    APP_ENV = "staging"
    NODE_ENV = "testing"
  }

  buildpacks = "${var.heroku_app_buildpacks}"
}

resource "heroku_app" "production" {
  name   = "${var.heroku_production_app}"
  region = "${var.heroku_region}"

  config_vars = {
    APP_ENV = "production"
    NODE_ENV = "production"
  }

  buildpacks = "${var.heroku_app_buildpacks}"
}
