require "cpf_cnpj"

def cpf_is_valid? cpf
    CPF.valid? cpf
end

print "Type a CPF: "
cpf = gets.chomp

if cpf_is_valid? cpf
    puts "The CPF is valid"
else
    puts "The CPF is invalid"
end