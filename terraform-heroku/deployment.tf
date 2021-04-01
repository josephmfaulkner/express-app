# Build code & release to the app
resource "heroku_build" "example" {
  app        = "${heroku_app.staging.name}"
  source {
    url     = "https://github.com/josephmfaulkner/express-app/archive/refs/tags/v4.0.tar.gz"
  }
}

# Launch the app's web process by scaling-up
resource "heroku_formation" "example" {
  app        = "${heroku_app.staging.name}"
  type       = "web"
  quantity   = 1
  size       = "free"
  depends_on = [heroku_build.example]
}

output "staging_app_url" {
  value = "https://${heroku_app.staging.name}.herokuapp.com"
}