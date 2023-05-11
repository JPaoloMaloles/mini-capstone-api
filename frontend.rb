#Bonus: Make a Ruby frontend script using the HTTP gem to display the results in the terminal instead of a web browser!
#Bonus: In your Ruby frontend script, use the tty-table gem (https://github.com/piotrmurach/tty-table) to print out the results with tables in the terminal!
require "http"
require "tty-table"
response = HTTP.post("http://localhost:3000/products.json")
api_data = HTTP.get("http://localhost:3000/products.json")
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

#Bonus: Make a Ruby script to test the index and show actions using the HTTP gem

#Bonus: Add an option to your frontend Ruby script to test your create action (you can get user input using gets.chomp). You'll need to read the docs to make a POST request with the http gem: https://github.com/httprb/http/wiki
