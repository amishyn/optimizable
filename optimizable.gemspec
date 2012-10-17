$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "optimizable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "optimizable"
  s.version     = Optimizable::VERSION
  s.authors     = ["Alex Mishyn"]
  s.email       = ["mishyn@gmail.com"]
  # s.homepage    = ""
  s.summary     = "Store for seo params"
  s.description = "Store for seo params"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  # s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_development_dependency 'rspec'
end
