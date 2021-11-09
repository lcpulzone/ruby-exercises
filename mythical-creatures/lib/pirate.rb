class Pirate
	attr_reader :name, :job, :booty

	def initialize(name, job = "Scallywag")
		@name = name
		@job = job
		@acts_commited = 0
		@booty = 0
	end
	
	def cursed?
		@acts_commited >= 3 
	end
	
	def commit_heinous_act
		@acts_commited += 1
	end
	
end