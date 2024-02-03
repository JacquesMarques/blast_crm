module Blast::Tasks
  class Task < ApplicationRecord
    belongs_to :user
    belongs_to :contact, optional: true
  end
end
