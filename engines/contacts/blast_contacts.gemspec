$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blast/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blast_contacts"
  s.version     = Blast::Contacts::VERSION
  s.authors     = ["Jacques Marques"]
  s.email       = ["jmarques1@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Blast::Contacts."
  s.description = "TODO: Description of Blast::Contacts."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.2.8.1"

  s.add_dependency "deface"
end
