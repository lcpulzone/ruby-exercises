class Wizard
	attr_reader :name	

	def initialize(name)
		@name = name
		@bearded = true
	end

	def bearded?	
		@bearded
	end
end