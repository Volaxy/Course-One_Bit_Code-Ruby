hash = Hash.new

3.times do
    print "Type the key: "
    key = gets.chomp

    print "Type the value of the key #{key}: "
    value = gets.chomp

    hash[:"#{key}"] = value
end

hash.each do |key, value|
    puts "The key is #{key} and the value is #{value}"
end
