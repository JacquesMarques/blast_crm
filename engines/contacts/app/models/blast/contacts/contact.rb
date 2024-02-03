module Blast::Contacts
  class Contact < ApplicationRecord
    belongs_to :user
  end
end
