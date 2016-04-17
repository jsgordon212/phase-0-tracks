#hamsters.rb

puts "What is the hamsters name?"
name = gets.chomp

puts "On a scale from 1 to 10 how loud is the hamster?"
volume = gets.to_i

puts "What color is its fur?"
color = gets.chomp

puts "Is it a good candidate for adoption?"
ans = gets.chomp

if ans.eql?("yes")
	adoptable = true
else
	adoptable = false
end


puts "What is its approximate age?"
age = gets.to_i

if age.to_s == ''
	age = nil
end

puts "Name: #{name}" + "\n" + "Noise Level: #{volume}" + "\n" + 
"Candidate for Adoption: #{adoptable}" + "\n" + "Approximate Age: #{age}"