module ProductsHelper
	def price(product)
		product.present? ? "  ₹ #{product.price}.00"  :""
	end

end
