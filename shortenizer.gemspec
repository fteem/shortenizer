$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shortenizer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shortenizer"
  s.version     = Shortenizer::VERSION
  s.authors     = ["Ile Eftimov"]
  s.email       = ["ileeftimov@gmail.com"]
  s.homepage    = "https://github.com/fteem/shortenizer"
  s.summary     = "Mountable URL shortener for your Rails app."
  s.description = "Easily shortnen links with your Rails application."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.5"

  s.add_development_dependency "sqlite3"
end
