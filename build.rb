# Run Middleman build script

system "bundle exec middleman build"

# Copy CSS (Less) and JavaScript (CoffeeScript) source files to the "build" directory
# Read "http://blog.dmfranc.com/post/29475625982/developer-friendly-websites" for more information

require "fileutils"

source_dir = 'source'
css_dir = 'css'
js_dir  = 'js'

files =  Dir.glob(File.join(source_dir, css_dir, "**/*.less"))
files += Dir.glob(File.join(source_dir, css_dir, "**/*.css"))
files += Dir.glob(File.join(source_dir, js_dir,  "**/*.coffee"))

files.each do |file|
  puts "Copying '#{file.gsub('source/', 'build/')}'..."
  FileUtils.cp(file, file.gsub('source/', 'build/'))
end
