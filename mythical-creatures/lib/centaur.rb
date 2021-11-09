class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @activity_count = 0
    @laying_count = 0
		@potions_drank = 0
  end

  def cranky?
    @activity_count >=3 
  end

  def standing?
    @laying_count == 0
  end

  def shoot
    @activity_count += 1
    if cranky? || laying?
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @activity_count += 1
		if laying? 
			"NO!"
		else
			"Clop clop clop clop!"
		end
  end

  def sleep
    return "NO!" if standing?
    @activity_count = 0
  end

  def lay_down
    @laying_count += 1
  end

  def laying?
    @laying_count >= 1
  end
	
	def stand_up
		@laying_count -= 1
	end

	def drink_potion
		@potions_drank += 1
	end

	def rested?
		standing? && @potions_drank >= 1
	end

	def sick?
		rested? && @potions_drank >= 1
	end
end
