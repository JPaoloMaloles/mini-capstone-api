# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

supplier = Supplier.create!(name: "Best Goods", email: "bestgoods@gmail.com", phone_number: "1-111-111-1111")
product = Product.create!(name: "Balloon", price: 9, description: "Helium contained within plastic", inventory: 4, supplier_id: supplier.id)
image = Image.create!(url: "https://cdn.media.amplience.net/i/partycity/C909620_red?$large$&fmt=auto&qlt=default", product_id: product.id)
image = Image.create!(url: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-3988714139.jpg", product_id: product.id)

product = Product.create!(name: "Pencil", price: 1, description: "Graphite contained within wood", inventory: 5, supplier_id: supplier.id)
image = Image.create!(url: "https://img.freepik.com/free-vector/writting-pencil-design_1095-187.jpg", product_id: product.id)

supplier = Supplier.create!(name: "Worst Goods", email: "worstgoods@gmail.com", phone_number: "2-222-222-2222")
product = Product.create!(name: "Magic Schoolbus", price: 1, description: "Magic contained within bus", inventory: 6, supplier_id: supplier.id)
image = Image.create!(url: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-3988714139.jpg", product_id: product.id)

user = User.create!(name: "name", email: "email@gmail.com", password: "password", password_confirmation: "password")
# user = User.new(name: "name", email: "email@gmail.com", password_digest: "password")
# t.string "name"
# t.string "email"
# t.string "password_digest"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
order = Order.create!(user_id: user.id, product_id: product.id, quantity: 3, subtotal: 1, tax: 2, total: 3)

# t.integer "user_id"
# t.integer "product_id"
# t.integer "quantity"
# t.decimal "subtotal", precision: 9, scale: 2
# t.decimal "tax", precision: 9, scale: 2
# t.decimal "total", precision: 9, scale: 2
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false

# #--------------------------------------------------------------------------------------------------------------------
# supplier1 = Supplier.new(name: "Best Goods", email: "bestgoods@gmail.com", phone_number: "1-111-111-1111")
# supplier1.save

# supplier2 = Supplier.new(name: "Worst Goods", email: "worstgoods@gmail.com", phone_number: "2-222-222-2222")
# supplier2.save
# #-----------------------------------
# product1 = Product.new(name: "Balloon", price: 9, description: "Helium contained within plastic", inventory: 4, supplier_id: supplier1.id)
# product1.save
# #image_url: "https://cdn.media.amplience.net/i/partycity/C909620_red?$large$&fmt=auto&qlt=default"

# product2 = Product.new(name: "Pencil", price: 1, description: "Graphite contained within wood", inventory: 5, supplier_id: supplier1.id)
# product2.save
# #image_url: "https://weareticonderoga.com/wp-content/uploads/2019/06/13308_GLAMOUR_2000X2000.png"

# product3 = Product.new(name: "Magic Schoolbus", price: 1, description: "Magic contained within bus", inventory: 6, supplier_id: supplier2.id)
# product3.save
# #image_url: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-3988714139.jpg"

# # product.create!({

# # })
# image1 = Image.new(url: "https://cdn.media.amplience.net/i/partycity/C909620_red?$large$&fmt=auto&qlt=default", product_id: product1.id)
# image1.save

# image2 = Image.new(url: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-3988714139.jpg", product_id: product1.id)
# image2.save

# image3 = Image.new(url: "https://img.freepik.com/free-vector/writting-pencil-design_1095-187.jpg", product_id: product2.id)
# image3.save

# image4 = Image.new(url: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-3988714139.jpg", product_id: product3.id)
# image4.save
