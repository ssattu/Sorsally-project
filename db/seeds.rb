# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# 10.times {
	Product.create!(name:"T-shirt", description:"lorem_ipsum", price:130.50, gender:"men", category_id:3, images:"https://images.meesho.com/images/products/38929130/4qayg_512.jpg")
# 	Product.create!(name:"Hoddies", description:"lorem_ipsum", price:150.50, gender:"women", category_id:5, images:"https://images.meesho.com/images/products/38929130/4qayg_512.jpg")
# }