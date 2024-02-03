Deface::Override.new(virtual_path: 'blast/admin/admin/index',
                     name: 'add_contacts_list_to_admin_dashboard',
                     insert_after: "[data-blast-hook='admin_dashboard']",
                     partial: 'overrides/admin_dashboard_contacts_list',
                     namespaced: true,
                     :original => '947208d0374acb1fe5c70c53757d644ce97a55a5')