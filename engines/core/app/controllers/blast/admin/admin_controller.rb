module Blast
  module Admin
    class AdminController < ApplicationController
      before_action :set_user_count, only: :index

      def index
        authorize [:blast, :admin], :index?
        @users = policy_scope(Blast::User).ordered.limit(3)
      end

      private

      def set_user_count
        @users_count = policy_scope(Blast::User).count
      end
    end
  end
end