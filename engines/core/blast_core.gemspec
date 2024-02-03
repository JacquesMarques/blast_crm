$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'blast/core/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "blast_core"
  spec.version     = Blast::Core::VERSION
  spec.authors     = ["Jacques Marques"]
  spec.email       = ["jmarques1@gmail.com"]
  spec.homepage    = "https://devblast.com"
  spec.summary     = "Core features of blast_crm."
  spec.description = "Core features of blast_crm."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.8", ">= 5.2.8.1"

  spec.add_dependency 'bootstrap', '~> 4.3.1'
  spec.add_dependency 'jquery-rails', '~> 4.3.3'
  spec.add_dependency 'sass-rails', '~> 5.0'

  spec.add_dependency 'devise', '~> 4.6.2'
  spec.add_dependency 'pundit', '~> 2.0.1'

  spec.add_development_dependency 'sqlite3', '~> 1.4.1'

  # We're adding bootsnap here because it's a dependency of our parent
  # and we'll need it to interact with it when running our tests
  spec.add_development_dependency 'bootsnap', '>= 1.1.0'

  spec.add_development_dependency 'database_cleaner', '~> 1.7.0'
  spec.add_development_dependency 'factory_bot_rails', '~> 5.0.2'
  spec.add_development_dependency 'faker', '~> 1.9.3'
  spec.add_development_dependency 'rspec-rails', '~> 3.8.2'
end
