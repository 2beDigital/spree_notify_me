module Spree
  class StockMailer < BaseMailer
  	helper 'spree/base'
    def notify_users_email(users, variant, resend = false)
    	users_mail = users.map {|x| x.email}
    	#I18n.locale = users.first.locale
  		@variant = variant.respond_to?(:id) ? variant : Spree::Shipment.find(variant)
  		subject = (resend ? "[#{Spree.t(:resend).upcase}] " : '')
  		subject += "#{Spree::Store.current.name}, #{Spree.t(:wished_product_available)}"
  		mail(bcc: users_mail, from: from_address, subject: subject)
    end
  end
end