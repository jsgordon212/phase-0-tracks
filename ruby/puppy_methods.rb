class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end


	def fetch(toy)
		puts "I brought back the #{toy}!"
   		toy
  	end

	def speak(x)
 		x.times {puts "Woof!"}
 	end

 	def roll_over
 		puts "*rolls over*"
 	end

 	def dog_years(human_years)
 		human_years*7
 	end

 	def sit
 		puts "*sits*"
 	end

end


my_puppy = Puppy.new

my_puppy.fetch("ball")

my_puppy.speak(3)

my_puppy.roll_over

puts "My dog is #{my_puppy.dog_years(3)} in dog years"

my_puppy.sit


class Megaman

	def initialize
		puts "Sizzling circuits!"
	end

	def jump
		puts "*jumps"
	end

	def shoot
		puts "*shoots blaster*"
	end

end


extra_lives = []

50.times {extra_lives << Megaman.new}

extra_lives.each do |player| 
	player.jump
	player.shoot
end
