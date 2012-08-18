# The static content rooted in the current working directory
# Dir.pwd => http://0.0.0.0:3000/
#
root=Dir.pwd
puts ">>> Serving: #{root}/build"
run Rack::Directory.new("#{root}/build")

# Launch thin and point to the rack configuration file
# $ thin -R static.ru start
