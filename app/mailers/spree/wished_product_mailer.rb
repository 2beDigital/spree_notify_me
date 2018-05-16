module Spree
  class WishedProductMailer < BaseMailer
  	helper 'spree/base'
    def notify_user(user, variant_id, resend = false)
    	#I18n.locale = users.first.locale
  		@variant = Spree::Variant.find_by(id: variant_id)
  		subject = (resend ? "[#{Spree.t(:resend).upcase}] " : '')
  		subject += "#{Spree::Store.current.name}, #{Spree.t(:wished_product_added)}"
  		mail(bcc: [user.email, from_address], from: from_address, subject: subject)
    end
  end
end