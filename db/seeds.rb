# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(name: "Balloon", price: 9, image_url: "https://cdn.media.amplience.net/i/partycity/C909620_red?$large$&fmt=auto&qlt=default", description: "Helium contained within plastic")
product.save

product = Product.new(name: "Pencil", price: 1, image_url: "https://weareticonderoga.com/wp-content/uploads/2019/06/13308_GLAMOUR_2000X2000.png", description: "Graphite contained within wood")
product.save

product = Product.new(name: "Magic Schoolbus", price: 1, image_url: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-3988714139.jpg", description: "Magic contained within bus")
product.save

supplier = Supplier.new(name: "Best Goods", email: "bestgoods@gmail.com", phone_number: "1-111-111-1111")
supplier.save

supplier = Supplier.new(name: "Worst Goods", email: "worstgoods@gmail.com", phone_number: "2-222-222-2222")
supplier.save
