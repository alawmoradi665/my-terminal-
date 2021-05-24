#user story:
# user must be able to view the menu
# user should be able to choose a menu item
# user should be able to specify quantity of that item
# user should be able to order more than one item 
# user should be able to exit the app
# user should be given the final bill which should be accuratly calculated 

# pseudocode
# 1. display a welcome msg with instructions on how to use the app
# 2. display the menu items
# 3. get the user input 
#     1. if the user chooses a menu item, ask for the quantity
#         1. get the item price and calculate the bill 
#     2. if the user wants to exit the app, then display the final bill and exit the app



require_relative "customer_order.rb"

#instance of the customer class 
@customer = CustomerOrder.new("Bob")

#call the welcome_msg and menu method
customer.welcome_msg

#this is a flag, the loop is based on it like while ordering is true, do so and so. while ordering is false, do so and so.
ordering = true
#loop
while ordering
    customer.menu 
    #get the user input
    user_choice = gets.chomp.to_i
    case user_choice
    when 1,2,3
        customer.place_order(user_choice)
    when 0
        ordering = false 
        puts "Thank you for visiting #{customer.name}, your bill is #{customer.bill}"
    else
        puts "Invalid choice. Type 1, 2, 3 or exit"
    end
end