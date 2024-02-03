Deface::Override.new(virtual_path: 'blast/admin/contacts/index',
                     name: 'add_admin_contacts_list_to_admin',
                     insert_after: "[data-blast-hook='admin_list']",
                     partial: 'overrides/admin_contacts_list',
                     namespaced: true)