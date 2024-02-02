module Blast
  module Admin
    class UsersController < AdminController
      def index
        @users = Blast::User.ordered
      end
    end
  end
end