class Centaur
    attr_reader :name, :breed, :shoot, :run

    def initialize(name, breed)
        @name = name
        @breed = breed
        @shoot = "Twang!!!"
        @run = "Clop clop clop clop!"
    end
end