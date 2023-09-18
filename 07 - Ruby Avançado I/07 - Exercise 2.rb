module Person
    def self.add(text, name, id)
        puts text
        puts name
        puts id
        puts "===================="
    end

    class Juridic
        include Person

        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end

        def add
            Person::add("Juridic person added", @name, @cnpj)
        end
    end
    
    class Physical
        include Person

        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end

        def add
            Person::add("Physical person added", @name, @cpf)
        end
    end
end

juridic = Person::Juridic.new("M. C. Investimentos", "4241.123/0001").add
physic = Person::Physical.new("José Almeida", "425.123.123-123").add