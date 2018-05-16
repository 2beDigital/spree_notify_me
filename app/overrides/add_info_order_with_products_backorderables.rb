Deface::Override.new(virtual_path: 'spree/admin/orders/edit',
					 name: 'add_info_order_with_products_backorderables',
					 insert_top: 'div[data-hook="admin_order_edit_header"]',
                     text: '<% if (@order.line_items.any? { |p| p.product.preorder }) %>
                     			<div class="alert-info"><%= Spree.t(:products_preorder) %></div>
                     		<% end %>')