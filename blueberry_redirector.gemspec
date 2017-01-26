$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blueberry_redirector/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blueberry_redirector"
  s.version     = BlueberryRedirector::VERSION
  s.authors     = ["Tonda Pleskac"]
  s.email       = ["pleskac@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of BlueberryRedirector."
  s.description = "Description of BlueberryRedirector."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0.1"
  s.add_dependency "roo"
  s.add_dependency "simplify_redirector", "~> 1.0.1"
  s.add_dependency "virtus"

  s.add_development_dependency "sqlite3"
end
