Deface::Override.new(virtual_path: 'blast/admin/admin/index',
                     name: 'add_tasks_list_to_admin_dashboard',
                     insert_after: "[data-blast-hook='admin_tasks_dashboard']",
                     partial: 'overrides/admin_dashboard_tasks_list',
                     namespaced: true,
                     :original => 'd57e732e2a3a7808b9c15c2fafb28bbc377b3b1e')