module ProductsHelper
	def price(product)
		product.present? ? "  ₹ #{product.price.to_d.round(2)}" : ""
	end

end
