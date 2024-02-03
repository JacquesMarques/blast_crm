module Blast
  class DashboardPolicy < Struct.new(:user, :dashboard)
    def index?
      user.present?
    end
  end
end