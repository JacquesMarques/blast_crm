$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blast/tasks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blast_tasks"
  s.version     = Blast::Tasks::VERSION
  s.authors     = ["Jacques Marques"]
  s.email       = ["jmarques1@gmail.com"]
  s.homepage    = "https://devblast.com"
  s.summary     = "Task feature for BlastCRM."
  s.description = "Task feature for BlastCRM."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.2.8.1"

  s.add_dependency "deface", '~> 1.4.0'
end
