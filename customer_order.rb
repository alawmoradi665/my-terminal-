# class should only contain the method
#place the loop and everythinh else in index


class CustomerOrder
    attr_reader :bill, :name 
    def initialize(name)
        #initialize instance variable name. Yani starta namnet sa det blir anvandbart i koden
        @name = name
        @bill = 0
    end 

    def welcome_msg
        p "Welcome to Alaw's kitchen, choose an item from the menu or enter exit to quit the menu."
    end 

    def menu
        @menu_items = {"1. Nachos" => 10, "2. Pizza" => 15, "3. Fries" => 8}
        #loop through menu items and display in a nice format 
        #update the menu list (contains item number and price) with the right price if the menu items are updated, otherwise code will not work
        @menu_list = {1 => 10, 2 => 15, 3 => 8}

        menu_items.each do|item, price|
            p "#{item} ----- #{price}"
    end

    def get_item_price(user_choice)
        #fetch the item price
        @item_price = @menu_list[user_choice]
    end 
   
    def get_quantity
        puts "How many would you like?"
        quantity = gets.chomp.to_i
        end

    def calculate_bill
        # calculate the total bill
        @bill += @item_price * @quantity
    end 
   
    def place_order(user_choice)
        get_item_price(user_choice)
        get_quantity
        calculate_bill

    end

end 

