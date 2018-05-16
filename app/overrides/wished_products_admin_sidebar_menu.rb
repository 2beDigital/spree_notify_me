Deface::Override.new( virtual_path: "spree/admin/shared/_configuration_menu",
					  name: "wished_products_admin_sidebar_menu",
					  insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
					  text: "<%= configurations_sidebar_menu_item Spree.t(:wished_products), spree.admin_wished_products_path %>")
