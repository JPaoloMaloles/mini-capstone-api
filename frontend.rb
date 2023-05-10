require "http"
require "tty-table"
api_data = HTTP.get("http://localhost:3000/showall.json")
products_hash = api_data.parse(:json)

table = TTY::Table.new(["ID", "name", "price", "Description"], [])
products_hash.each do |product|
  puts "ID: #{product["id"]}"
  puts "name: #{product["name"]}"
  puts "price: #{product["price"]}"
  puts "Image URL: #{product["image_url"]}"
  puts "Description: #{product["description"]}"
  puts

  table << [product["id"], product["name"], product["price"], product["description"]]
end

puts table
