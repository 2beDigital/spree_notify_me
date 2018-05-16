Deface::Override.new(virtual_path: 'spree/admin/products/_form',
					 name: 'add_checkbox_for_preorder_products',
					 insert_after: 'div[data-hook="admin_product_form_promotionable"]',
					 text: '<%= f.field_container :preorder do %>
						        <%= f.check_box :preorder %>
						        <%= f.label Spree.t(:preorder) %>
							<% end %>')