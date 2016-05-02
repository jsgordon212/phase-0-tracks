#santa.rb

class Santa

	attr_reader :reindeer_ranking
	attr_accessor :gender, :ethnicity, :age


	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher",
		 "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance .."
	end


	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end


	def celebrate_birthday
		@age += 1
	end


	def get_mad_at(name)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete(name))
	end

	
end


genders = ["genderless", "male", "female", "N/A"]
ethnicities = ["Orc", "Night Elf", "Undead", "Human", "Dwarf", "Goblin", "N/A"]
ages = (0..140).to_a


10000.times do 
  
  santa = Santa.new(genders.sample, ethnicities.sample)
  santa.age = ages.sample

  p santa.age
  p santa.gender
  p santa.ethnicity


end



