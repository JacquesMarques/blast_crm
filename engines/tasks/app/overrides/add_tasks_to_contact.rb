if Blast::Core.available?(:contacts)
  Deface::Override.new(:virtual_path => "blast/contacts/contacts/show",
                       :name => "add_tasks_to_contact",
                       :insert_after => "[data-blast-hook='contacts_show']",
                       :partial => "overrides/contact_tasks_list",
                       :namespaced => true)
end