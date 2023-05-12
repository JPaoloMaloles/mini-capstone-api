require "http"
require "tty-table"

#--------------------------------------------------------------------------------------------------------------------- Menu
# greeting message on open then a loop:
# input CRUD or Exit
# end
#--------------------------------------------------------------------------------------------------------------------- Create
puts "we are going to add a new product!"
puts "please input a name:"
input_name = gets.chomp
puts "please input a price:"
input_price = gets.chomp.to_i
puts "please input an image url:"
input_image_url = gets.chomp
puts "please input a description:"
input_description = gets.chomp

response = HTTP.post("http://localhost:3000/products.json", :form => { name: input_name,
                                                                       price: input_price,
                                                                       image_url: input_image_url,
                                                                       description: input_description })
#--------------------------------------------------------------------------------------------------------------------- Read
#Can probably edit it so you dont have to do it Get
api_data = HTTP.get("http://localhost:3000/products.json")
products_hash = api_data.parse(:json)

table = TTY::Table.new(["ID", "name", "price", "Description"], [])
products_hash.each do |product|
  # puts "ID: #{product["id"]}"
  # puts "Name: #{product["name"]}"
  # puts "Price: #{product["price"]}"
  # puts "Image URL: #{product["image_url"]}"
  # puts "Description: #{product["description"]}"
  # puts

  # temp_array = []
  # temp_array << "ID: #{product["id"]}"
  # temp_array << "name: #{product["name"]}"
  # temp_array << "price: #{product["price"]}"
  # temp_array << "Image URL: #{product["image_url"]}"
  # temp_array << "Description: #{product["description"]}"

  table << [product["id"], product["name"], product["price"], product["description"]]
  #table << temp_array
end

puts table.render(:ascii)

#--------------------------------------------------------------------------------------------------------------------- Update

#--------------------------------------------------------------------------------------------------------------------- Destroy
#--------------------------------------------------------------------------------------------------------------------- Bonus

#Bonus: Make a Ruby frontend script using the HTTP gem to display the results in the terminal instead of a web browser!
#-------------------------------
#Bonus: In your Ruby frontend script, use the tty-table gem (https://github.com/piotrmurach/tty-table) to print out the results with tables in the terminal!
#-------------------------------
#Bonus: Make a Ruby script to test the index and show actions using the HTTP gem
#-------------------------------
#Bonus: Add an option to your frontend Ruby script to test your create action (you can get user input using gets.chomp). You'll need to read the docs to make a POST request with the http gem: https://github.com/httprb/http/wiki

# Bonus: In your frontend Ruby script, add an update option.

# Bonus: In your frontend Ruby script, add a destroy option.
