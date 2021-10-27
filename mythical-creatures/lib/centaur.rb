class Centaur
    attr_reader :name, :breed, :shoot

    def initialize(name, breed)
        @name = name
        @breed = breed
        @shoot = "Twang!!!"
    end
end