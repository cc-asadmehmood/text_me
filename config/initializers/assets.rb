# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Ensure the app/assets/javascripts directory is included in the asset pipeline
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "javascripts")

# Ensure the Semantic UI fonts are included in the asset pipeline
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts", "semantic-ui")
