module Blast::Tasks
  class Task < ApplicationRecord
    belongs_to :user
    if Blast::Core.available?(:contacts)
      belongs_to :contact, class_name: "Blast::Contacts::Contact",
                 optional: true
    end
  end
end
