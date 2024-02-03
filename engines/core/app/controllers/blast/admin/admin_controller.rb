module Blast
  module Admin
    class AdminController < ApplicationController
      def index
        authorize [:blast, :admin], :index?
        @users = policy_scope(Blast::User).ordered.limit(3)
        @users_count = policy_scope(Blast::User).count
      end
    end
  end
end