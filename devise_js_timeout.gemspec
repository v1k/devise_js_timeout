$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_js_timeout/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_js_timeout"
  s.version     = DeviseJsTimeout::VERSION
  s.authors     = ["Victor Kalutskiy"]
  s.email       = ["vkalutsk@gmail.com"]
  s.homepage    = ""
  s.summary     = "Patch for devise to add javascript autologout and redirect to login page."
  s.description = "Patch for devise to add javascript autologout and redirect to login page."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "devise"
end
