require 'devise'
require_relative 'core/engine'
require 'sass-rails'
require 'bootstrap'
require 'jquery-rails'
require 'pundit'

module Blast
  module Core
    def self.available?(engine_name)
      Object.const_defined?("Blast::#{engine_name.to_s.camelize}")
    end
  end
end