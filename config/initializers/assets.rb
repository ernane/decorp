# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( dashboard.css main-ie.css main-ie-part2.css dashboard.js main.css bootstrap.min.css font-awesome.min.css)
Rails.application.config.assets.precompile += %w( glyphicons-halflings-regular.eot glyphicons-halflings-regular.woff glyphicons-halflings-regular.ttf)
Rails.application.config.assets.precompile += %w( lato-lig-webfont.eot lato-lig-webfont.woff lato-lig-webfont.ttf lato-lig-webfont.svg)
Rails.application.config.assets.precompile += %w( lato-reg-webfont.eot lato-reg-webfont.woff lato-reg-webfont.ttf lato-reg-webfont.svg)
Rails.application.config.assets.precompile += %w( lato-bol-webfont.eot lato-bol-webfont.woff lato-bol-webfont.ttf lato-bol-webfont.svg)
