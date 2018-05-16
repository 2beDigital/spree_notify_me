Spree::StockMovement.class_eval do
	def notify_stock_updated(users,variant)
      Spree::StockMailer.notify_users_email(users,variant).deliver
    end
end