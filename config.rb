set :css_dir, "css"
set :js_dir, "js"
set :images_dir, "img"

# Environment configuration
configure :development do
  activate :livereload
end

# Build-specific configs
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  activate :directory_indexes
end
