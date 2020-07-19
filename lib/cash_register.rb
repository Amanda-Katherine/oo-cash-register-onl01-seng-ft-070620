class CashRegister
    attr_accessor :total, :discount#, Hint #3 said to have another attr_accessor? 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item_list = []
        @price_list = []
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
            @item_list << title
            @price_list << price
        end
        @last_transaction = price * quantity
    end

    def apply_discount
        if @discount != 0
            @total = @total*0.8
            "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @item_list
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end
end
