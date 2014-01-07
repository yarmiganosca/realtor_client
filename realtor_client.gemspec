$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "realtor_client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "realtor_client"
  s.version     = RealtorClient::VERSION
  s.authors     = ["Chris Hoffman", "Josh Caldwell"]
  s.email       = ["yarmiganosca@gmail.com"]
  s.homepage    = "github.com/yarmiganosca/realtor_client"
  s.summary     = "Rails engine for interacting with RealtorService"
  s.description = "Rails engine for interacting with RealtorService"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
end
