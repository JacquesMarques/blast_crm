Deface::Override.new(:virtual_path => "layouts/blast/application",
                     :name => "add_tasks_link_to_nav",
                     :insert_after => "[data-blast-hook='main_nav']",
                     :partial => "overrides/tasks_link",
                     :namespaced => true)
