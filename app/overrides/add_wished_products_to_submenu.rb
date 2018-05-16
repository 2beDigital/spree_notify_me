Deface::Override.new(virtual_path: 'spree/admin/shared/_product_sub_menu',
					 name: 'add_wished_products_to_submenu',
					 insert_bottom: '#sub_nav',
					 text: '<%= tab :wished_products, label: Spree.t(:wished_products)  %>')