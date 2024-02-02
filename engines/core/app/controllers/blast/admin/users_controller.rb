module Blast
  module Admin
    class UsersController < AdminController
      def index
        authorize Blast::User
        @users = policy_scope(Blast::User).ordered
        @users_count = @users.count
      end
    end
  end
end