require_relative "product"
require_relative "market"

product1 = Product.new("Rice", 10.5)
product2 = Product.new("Tomato", 5.4)

market1 = Market.new(product1)
market2 = Market.new(product2)

market1.purchase
market2.purchase