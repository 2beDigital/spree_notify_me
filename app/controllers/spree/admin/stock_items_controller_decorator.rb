Spree::Admin::StockItemsController.class_eval do
	def create
        variant = Spree::Variant.find(params[:variant_id])
        stock_location = Spree::StockLocation.find(params[:stock_location_id])
        stock_movement = stock_location.stock_movements.build(stock_movement_params)
        stock_movement.stock_item = stock_location.set_up_stock_item(variant)

        users = select_users_want_wished_variant
        if users.present? && variant && stock_movement.stock_item.count_on_hand < 1 && !variant.can_supply?
        	stock_movement.notify_stock_updated(users, variant)
        end

        if stock_movement.save
          flash[:success] = flash_message_for(stock_movement, :successfully_created)
        else
          flash[:error] = Spree.t(:could_not_create_stock_movement)
        end

        redirect_to :back
    end
    private

    def select_users_want_wished_variant
    	users = []
    	Spree::Wishlist.all.each do |wishlist|
    		wishlist.wished_products.each do |product|
    			if product.variant_id == params[:variant_id].to_i
    				users << wishlist.user
    			end
    		end
    	end
    	return users
    end
end