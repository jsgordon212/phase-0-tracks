#hashes.rb

##Asks user for input for each category that will appear on the form
##Puts each answer as a hash value for the corresponding key
##iterates through the hash set and prints out each key-value pair on a new line
##Asks user if they want to change any information 
##If yes, asks which category, updates that value, and prints the new hash set
##If no, exits the program


puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "How many children to you have?"
children = gets.to_i

puts "What decor theme would you like?"
decor = gets.chomp

puts "Do you have any pets?"
ans = gets.chomp

if ans.eql?("yes")
	pets = true
elsif ans.eql?("no")
	pets = false
else
	pets = nil
end

puts "What is the maximum you can spend?"
price_range = gets.chomp


client_info = { 
	name: name, 
	age: age, 
	children: children,
	pets: pets,
	price: price_range
	}

client_info.each do |key, value|
  puts "#{key}: " + "#{value}"
end

puts "Do you want to change any information?"
change_info = gets.chomp

if change_info.eql?("yes")
	puts "What would you like to change?"
	update_question = gets.chomp

	puts "What would you like to change your response to?"
	update_response = gets.chomp

	client_info[update_question.to_sym] = update_response

	client_info.each do |key, value|
 		puts "#{key}: " + "#{value}"
	end
	

end

