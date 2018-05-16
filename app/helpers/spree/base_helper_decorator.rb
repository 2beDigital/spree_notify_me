Spree::BaseHelper.module_eval do
  def can_supply_variants(product)
      cache_key = "supply-variants-#{product.id}-#{product.updated_at}"
      Rails.cache.fetch("#{cache_key}/can_supply_product", expires_in: 6.hours) do
        product.variants.each do |variant|
          if variant.can_supply?
            return true
          end
        end
        return false
      end
  end
end