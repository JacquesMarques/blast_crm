Blast::User.class_eval do
  has_many :tasks, class_name: "Blast::Tasks::Task"
end