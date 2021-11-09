class Dragon
	attr_reader :name, :color, :rider, :hunger_level
	
	def initialize(name, color, rider)
		@name = name
		@color = color
		@rider = rider
		@hunger_level = 0
	end

	def hungry?
		if @hunger_level <= 2
			true 
		else
			false
		end
	end

	def eat
		@hunger_level += 1
	end
	
end