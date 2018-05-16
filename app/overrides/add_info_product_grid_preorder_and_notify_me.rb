Deface::Override.new(virtual_path: 'spree/shared/_products',
					 name: 'add_info_product_grid_preorder_and_notify_me',
					 insert_bottom: 'ul#products li',
                     text: "<% if (!product.master.can_supply? && !can_supply_variants(product)) %>
                              <span class='pre-order-notify'><%= Spree.t(:notify_me) %></span>
                              <span class='sold-out'><%= Spree.t(:sold_out) %></span>
                            <% elsif (product.preorder) %>
                              <span class='sold-out'><%= Spree.t(:pre_order) %></span>
                            <% end %>")









