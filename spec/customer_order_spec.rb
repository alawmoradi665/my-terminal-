# Before coding, do a test case. These are the steps that should be tested in this game, to see if it all works properly

#Test cases:
# 1. Test if the customer instance is created and if the customer has a readable name
# 2. Test should display a welcome message
# 3. Should read the menu
# 4. Should be able to recieve user input (able to read their order)
# 5. Should be able to get the item price, based on what the user chose
# 6. Be able to choose the quantity
# 7. Be able to retrieve the final bill

describe CustomerOrder do
    before {:each} do
        #this piece of code runs before each test case defined in the block
        @customer = CustomerOrder.new("Bob")
    end
    it "instance must have a readable name" do
        expect(@customer.name).to eq("Bob")
    end
    it "displays welcome message" do
        msg = "Welcome to Alaw's kitchen, choose an item from the menu or enter exit to quit the menu."
        expect(@customer.welcome_msg).to eq(msg)
    end
    it "display the menu" do
        menu = {"1. Nachos" => 10, "2. Pizza" => 15, "3. Fries" => 8}
        expect(@customer.menu).to eq(menu)
    end
    it "get item price based on user choice"
        user_choice = 1
        expect(@customer.get_item_price(user_choice))
    end
    it "get the quantity"
        expect(@customer.get_quantity).to be > 0
    end 
    it "calculate final bill"
    #define your test dataset
    user_choice = 1
    final_bill = @customer.get_item_price(user_choice) * @customer.get_quantity
        expect(@customer.bill).to eq(final_bill)
    end
end 