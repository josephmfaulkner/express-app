
heroku_pipeline_name = "terraform"

heroku_region = "us"

heroku_develop_app = "terraform-heroku-develop"
heroku_develop_database = "heroku-postgresql:hobby-dev"

heroku_staging_app = "terraform-heroku-staging"
heroku_staging_database = "heroku-postgresql:hobby-dev"

heroku_production_app = "terraform-heroku-production"
heroku_production_database = "heroku-postgresql:hobby-dev"

heroku_app_buildpacks = [
    "heroku/nodejs"
]