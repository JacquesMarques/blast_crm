Deface::Override.new(:virtual_path => "blast/dashboard/index",
                     :name => "add_contacts_list_to_dashboard",
                     :insert_after => "[data-blast-hook='dashboard']",
                     :partial => "overrides/contacts_list",
                     :namespaced => true)