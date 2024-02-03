# frozen_string_literal: true
module Blast
  class DashboardController < ApplicationController
    def index
      # We're using [:blast, :dashboard] because of our namespace
      authorize [:blast, :dashboard], :index?
    end
  end
end