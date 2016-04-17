#secret_agents.rb

## the output variable is assinged to an empty string
## each iteration of the loop, output is assigned to itself plus a new character
## loops through the input string one character at a time
## if the character is a 'z' then a 'z' is added to output
## if there is an empty space, then an empty space is added
## otherwise the .next method is called on the character at the current index of i, and
## output is assigned to the combination of itself and the result of the method call.
## the new string assigned to output is returned

def encrypt(input)	

	i = 0
	output = ""
	while i < input.length

		if input[i].eql?('z')
			output = output + "a"

		elsif input[i].eql?(' ')
			output = output + " "
		else
			output = output + input[i].next
		end
		i += 1
	end

	return output
end

## the alphabet is reprented as an array and stored in the variable alph
## an empty array is created an assigned to tempArr
## the first while loop goes through the input string one char at a time
## and adds the index of where that character is located inside the alphabet array, to 
## the tempArray
## the second while loop uses the integers in the tempArray as the index to search through
## the alphabet array. If that index has an 'a' then the ouput string adds a 'z' plus itself
## otherwise the output string combines itself with the element found in the alphabet array
## at the index minus one, represented in the tempArr.
## the new output string is returned.

def decrypt(input)

	alph = ('a'..'z').to_a 
	tempArr = []
	output = ""
	i = 0
	j = 0

	while i < input.length
		tempArr.push(alph.index(input[i]))
		i += 1
	end

	while j < tempArr.length

		if alph[tempArr[j]].eql?('a')			

			output = output + "z"
		else
			output = output + alph[tempArr[j]-1]
		end

		j += 1
	end

	return output

end



puts "Would you like to decrypt or encrypt a password?"
ans = gets.chomp

puts "Enter password"
pass = gets.chomp

if ans.eql?("encrypt")
	puts encrypt(pass)

elsif ans.eql?("decrypt")
	puts decrypt(pass)
end

