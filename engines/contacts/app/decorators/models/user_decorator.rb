Blast::User.class_eval do
  has_many :contacts, class_name: "Blast::Contacts::Contact"
end