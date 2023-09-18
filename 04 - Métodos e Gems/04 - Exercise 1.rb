def power(number, exponent)
    number ** exponent
end

print "Type a number: "
number = gets.chomp.to_i
print "Type the exponent: "
exponent = gets.chomp.to_i

result = power(number, exponent)
puts "The result is #{result}"