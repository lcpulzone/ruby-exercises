class Wizard
	attr_reader :name	

	def initialize(name, bearded: true)
		@name = name
		@bearded = bearded
		@energy_level = 3
	end

	def bearded?	
		@bearded
	end

	def incantation(phrase)
		"sudo #{phrase}"
	end

	def rested?
		@energy_level > 1  
	end

	def cast
		"MAGIC MISSLE!"
	end
	
end