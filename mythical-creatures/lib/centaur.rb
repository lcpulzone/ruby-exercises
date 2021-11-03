class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @activity_count = 0
    @laying_count = 0
  end

  def cranky?
    if @activity_count >=3 
      true
    else
      false
    end
  end

  def standing?
    if @laying_count == 0
      true
    else
      false
    end
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
    return true if @laying_count >= 1
  end
	
	def stand_up
		@laying_count -= 1
	end

	def drink_potion
		@activity_count = 0
	end

	def rested?
		if @activity_count = 0 && standing?
			true
		else
			false
		end
	end
end
