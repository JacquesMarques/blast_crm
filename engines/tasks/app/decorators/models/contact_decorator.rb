if Blast::Core.available?(:contacts)
  Blast::Contacts::Contact.class_eval do
    has_many :tasks, class_name: "Blast::Tasks::Task"
  end
end