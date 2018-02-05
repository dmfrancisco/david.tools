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

# Information to be passed to the templates
set :email, "hello@dmfranc.com"

set :navbar, [
  {
    text: "Blog",
    link: "http://blog.dmfranc.com"
  }, {
    text: "Twitter",
    link: "https://twitter.com/dmfrancisco"
  }, {
    text: "GitHub",
    link: "https://github.com/dmfrancisco"
  }, {
    text: "LinkedIn",
    link: "https://linkedin.com/in/dmfrancisco/en"
  }, {
    text: "Dribbble",
    link: "https://dribbble.com/davidfrancisco"
  }
]

set :intro, {
  title_main: "Hello, I’m David Francisco.",
  title_more: "A web developer from Coimbra, Portugal.",
  subtitle: "Here are some open source side-projects I have worked on in the past."
}

set :projects, [
  {
    title: "React.parts",
    description: "A catalog of React components for both web and native.",
    image_src: "project-react-parts.png",
    link: "https://react.david.tools",
    year: 2015
  }, {
    title: "React Icons",
    description: "A simple React component for icons using inline SVG.",
    image_src: "project-react-icons.png",
    link: "http://dmfrancisco.github.io/react-icons",
    year: 2015
  }, {
    title: "Space Horse",
    description: "Web and NW.js desktop app for organizing knowledge. Written in ES6 with React and Flux.",
    image_src: "project-spacehorse.png",
    link: "https://github.com/dmfrancisco/spacehorse",
    year: 2015
  }, {
    title: "Jonymockup",
    description: "Simple tool for sharing mockups. Built with Polymer, uses shadow DOM and HTML imports.",
    image_src: "project-jonymockup.png",
    link: "http://jonymockup.dmfranc.com",
    year: 2015
  }, {
    title: "SpaceJunk",
    description: "An opinionated cloud-based TiddlyWiki setup. This is a proof-of-concept.",
    image_src: "project-spacejunk.png",
    link: "http://spacejunk.dmfranc.com",
    year: 2014
  }, {
    title: "Gideo",
    description: "Minimal video player like Vine that loops and autoplays.",
    image_src: "project-gideo.png",
    link: "https://github.com/dmfrancisco/gideo",
    year: 2014
  }, {
    title: "Blocks",
    description: "App for people interested in gathering self-knowledge. Built with AngularJS and Cordova.",
    image_src: "project-blocks.png",
    link: "http://blocks.dmfranc.com",
    year: 2014
  }, {
    title: "k▥",
    description: "Command-line tool for task boards that is collaborative and works offline. Uses Git as a DB.",
    image_src: "project-kood.png",
    link: "http://kood.dmfranc.com/info",
    year: 2013
  }, {
    title: "Pomada",
    description: "Simple tool for the pomodoro technique that can be used on the web, chrome or desktop.",
    image_src: "project-pomada.png",
    link: "http://pomada.dmfranc.com",
    year: 2012
  }, {
    title: "Appbase",
    description: "Web Platform for User-Centric Interoperable Applications using Apache Wookie and Google Caja.",
    image_src: "project-appbase.png",
    link: "http://tmblr.co/Zh-Y9ySGFFYm",
    year: 2012
  }, {
    title: "Pagehub",
    description: "Proof-of-concept that explores a kind of redirection technique using iframes.",
    image_src: "project-pagehub.png",
    link: "http://pagehub.dmfranc.com",
    year: 2011
  }, {
    title: "slideshow.html",
    description: "Yet another tool for creating presentations written in HTML, JS, CSS and Ruby.",
    image_src: "project-slideshow-html.png",
    link: "http://slideshow.dmfranc.com/",
    year: 2011
  }, {
    title: "Escrito",
    description: "A collaborative writing tool that supports Markdown and Textile. Powered by Node.js & ShareJS.",
    image_src: "project-escrito.png",
    link: "http://blog.dmfranc.com/tagged/escrito",
    year: 2011
  }, {
    title: "Desligado",
    description: "Experiment that adds support for disconnection and deferred updates to Backbone apps.",
    image_src: "project-desligado.png",
    link: "http://dmfrancisco.github.com/Desligado/",
    year: 2011
  }, {
    title: "Scurry",
    description: "Toy programming language. Written with Python, PLY and LLVM.",
    image_src: "project-scurry.png",
    link: "https://github.com/dmfrancisco/scurry/",
    year: 2010
  }, {
    title: "Activo",
    description: "A theme for data-driven applications written in SASS for Ruby on Rails.",
    image_src: "project-activo.png",
    link: "http://activo.dmfranc.com/",
    year: 2010
  }
]
