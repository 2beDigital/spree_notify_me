Spree::WishedProduct.class_eval do
  	def notify_user(user,variant_id)
     	Spree::WishedProductMailer.notify_user(user,variant_id).deliver
    end
end