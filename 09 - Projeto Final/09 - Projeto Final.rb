require "json"
require "net/http"

require_relative "currency"

print "Type base currency: "
base_currency = gets.chomp
print "Type the amount of this currency: "
amount = gets.chomp.to_f
print "Type target currency: "
target_currency = gets.chomp

# currency = Currency.new(base_currency, amount, target_currency)
currency = Currency.new
currency.total_amount