require "http"
api_data = HTTP.get("http://localhost:3000/showall.json")
products_hash = api_data.parse(:json)

products_hash.each do |product|
  puts "ID: #{product["id"]}"
  puts "name: #{product["name"]}"
  puts "price: #{product["price"]}"
  puts "Image URL: #{product["image_url"]}"
  puts "Description: #{product["description"]}"
  puts
end
