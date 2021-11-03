
class CashRegister
    attr_accessor :total, :last_transaction
    attr_reader :items, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end

    def add_item(item, price, count=1)
        @total += price * count
        @items += [item] * count
        @last_transaction = price * count
    end

    def apply_discount
        if (@discount == 0)
            "There is no discount to apply."
        else 
            @total = @total - (@total * @discount/100.0)
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end

end