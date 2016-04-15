#vampires.rb

puts "How many employees will be processed?"
employee_num = gets.to_i
i = 0


while i < employee_num 

		vampire = false
		immortal = false
		correct_age = true
		garlic = true
		insurance = true
		sun_allergy = false
		done = false

		puts "What is your name?"
		name = gets.chomp

		puts "How old are you"
		age = gets.to_i

		puts "What year were you born?"
		dob = gets.to_i

		puts "Our company cafeteria serves garlic bread. Should we order some for you?"
		order_garlic = gets.chomp

		if order_garlic.eql?("no")
			garlic = false
		end

		puts "Would you like to enroll in the company’s health insurance?"
		health_insurance = gets.chomp

		if health_insurance.eql?("no")
			insurance = false
		end

		if (2016-dob) != age
			correct_age = false
		end

		while !sun_allergy && !done
			puts "Please list any known allergies. Type 'done' when finished."
			allergy = gets.chomp
			if allergy.eql?("sunshine")
				sun_allergy = true
			elsif allergy.eql?("done")
				done = true
			end
		end 

		if sun_allergy
			puts "Probably a vampire"		

		elsif name.eql?("Drake Cula") || name.eql?("Tu Fang")
			puts "Definitely a Vampire"
		else
			
			if correct_age && (garlic || insurance)
				puts "Probably not a vampire."
			
			elsif !correct_age && (!garlic || !insurance)
				puts "Probably a vampire."

			elsif !correct_age && !garlic && !insurance
				puts "Almost certainly a vampire"

			else
				puts "Results inconclusive"

			end
		end
			
		i += 1
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends.learn"