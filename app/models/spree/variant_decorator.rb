Spree::Variant.class_eval do

  include ActionView::Helpers::NumberHelper

  def to_hash
    actual_price  = self.price
    {
      :id    => self.id,
      :in_stock => self.in_stock?,
      :can_supply => self.can_supply?,
      :price => number_to_currency(actual_price),
      :preorder => self.product.preorder
    }
  end

end