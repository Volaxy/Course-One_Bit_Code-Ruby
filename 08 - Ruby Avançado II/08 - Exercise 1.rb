phrase = "Olá, tudo bem? Meu whats app é (99) 74321-1234"

match_data = /\(\d{2}\) \d{5}-\d{4}/.match(phrase)
puts match_data