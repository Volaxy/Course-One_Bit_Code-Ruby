class Sportsman
    def compete
        puts "Participating in a competition"
    end
end

class FootballPlayer < Sportsman
    def run
        puts "Running after the ball"
    end
end

class Marathonist < Sportsman
    def run
        puts "Walking the circuit"
    end
end

footballPlayer = FootballPlayer.new
marathonist = Marathonist.new

footballPlayer.run
marathonist.run