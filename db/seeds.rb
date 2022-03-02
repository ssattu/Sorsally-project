# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


5.times {
	Product.create!(name:"black_top", description:"lorem_ipsum", price:100.50, gender:"men", category_id:1)
	Product.create!(name:"black_top", description:"lorem_ipsum", price:100.50, gender:"men", category_id:2)
}