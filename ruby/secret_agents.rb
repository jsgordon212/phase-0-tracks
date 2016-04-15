#secret_agents.rb

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

