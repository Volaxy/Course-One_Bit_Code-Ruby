class Car
    def get_km(phrase)
        find_km phrase
    end

    private
    def find_km(phrase)
        match_data = /\d{2}km\/h/.match(phrase)

        match_data
    end
end

car = Car.new

puts car.get_km "Um fusca de cor amarela viaja a 80km/h"