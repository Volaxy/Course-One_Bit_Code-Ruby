up_first_letter = lambda do |name|
    name[0] = name[0].capitalize

    puts name
end

def capitalize_name(name, lambda)
    lambda.call name
end

capitalize_name("gustavo", up_first_letter)
capitalize_name("matheus", up_first_letter)