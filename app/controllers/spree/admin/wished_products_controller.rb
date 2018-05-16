module Spree
	module Admin
		class WishedProductsController < Spree::Admin::BaseController
			def index
				@collection = Spree::WishedProduct.order(created_at: :desc).group(:variant_id).select(:id, :variant_id, "COUNT(spree_wished_products.variant_id) as times_wished").page(params[:page]).per(20)
			end
		end
	end
end