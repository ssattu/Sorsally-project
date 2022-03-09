# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
	

	Category.create!([{name: 'Tops & Blouses'}, {name: 'Shirts'}, {name: 'T-Shirts'}, {name: 'Hoodies'}, {name: 'Jackets'}, {name: 'Pants and Joggers'}, {name: 'Shorts'}, {name: 'Tracksuit Sets'}, {name: 'Skirts'}, {name: 'Dresses'}, {name: 'Jumpsuit & Rompers'}])


10.times {
	Product.create!(name:"T-shirt", description:"lorem_ipsum", price:130.50, gender:"men", category_id:Category.find_by(name:"T-Shirts").id, quantity:50)
	Product.create!(name:"Tops & Blouses", description:"lorem_ipsum", price:130.50, gender:"women", category_id:Category.find_by(name:"Tops & Blouses").id, quantity:50)
	Product.create!(name:"Dresses", description:"lorem_ipsum", price:150.50, gender:"women", category_id:Category.find_by(name:"Dresses").id, quantity:50)
	Product.create!(name:"Jackets", description:"lorem_ipsum", price:200.50, gender:"men", category_id:Category.find_by(name:"Jackets").id, quantity:50)
	Product.create!(name:"T-Shirts", description:"lorem_ipsum", price:250.50, gender:"men", category_id:Category.find_by(name:"T-Shirts").id, quantity:50)
}

User.create!(first_name:"Admin", last_name:"Sorsally", email:"admin@sorsally.com", password:"admin@S123", zipcode:"110048", country:"India", contact:"9958527662", is_admin:"true")