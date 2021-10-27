class Centaur
    attr_reader :name, :breed, :shoot, :run

    def initialize(name, breed)
        @name = name
        @breed = breed
        @activity_count = 0
    end

    def cranky?
        if @activity_count >=3 
            true
        else
            false
        end
    end

    def standing?
        true
    end

    def shoot
        @activity_count += 1
        if cranky? == true
            "NO!"
        else
            "Twang!!!"
        end
    end

    def run
        @activity_count += 1
        "Clop clop clop clop!"
    end
end