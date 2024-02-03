Deface::Override.new(:virtual_path => "blast/dashboard/index",
                     :name => "add_tasks_list_to_dashboard",
                     :insert_after => "[data-blast-hook='dashboard']",
                     :partial => "overrides/dashboard_tasks_list",
                     :namespaced => true)