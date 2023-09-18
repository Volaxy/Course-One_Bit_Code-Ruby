class Market
    def initialize(product)
        @product = product
    end

    def purchase
        puts "You bought the product #{@product.name} with the value #{@product.price}"
    end
end
