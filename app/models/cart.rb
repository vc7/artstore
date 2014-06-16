class Cart < ActiveRecord::Base
	has_many :cart_items, :dependent => :destroy
	has_many :items, :through => :cart_items, :source => :product

	# 加入購物車
	def add_product_to_cart(product)
		items << product
	end

	# 算總價錢
	def total_price
		items.inject(0) {|sum, item| sum + item.price }
	end
end
