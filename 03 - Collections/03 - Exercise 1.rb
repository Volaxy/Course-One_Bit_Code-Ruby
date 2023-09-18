array = []

3.times do
    print "Type a number: "
    array.push gets.chomp.to_i
end

modifiedArray = array.map do |value|
    value ** 2
end

puts "Modified array: #{modifiedArray}"