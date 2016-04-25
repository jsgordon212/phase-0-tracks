#alias_manager.rb

def alias_generator(name)

	new_name = name[name.index(' ') + 1, name.length - 1] + " " + name[0, name.index(' ')]

	new_name = new_name.chars.map!{|letter| 


		if letter.eql?('a')
			letter = 'e'
		elsif letter.eql?('e')
			letter = 'i'
		elsif letter.eql?('i')
			letter = 'o'
		elsif letter.eql?('o')
			letter = 'u'
		elsif letter.eql?('u')
			letter = 'a'
		elsif letter.eql?(' ')
			letter 
		else 
			letter.next
		end

	}.join('')

	return new_name

end


quit = false
while quit = false
	puts "Enter Name"
	name = gets.chomp
	if name.eql?('quit')
		quit = true
	end

	puts alias_generator(name)
end


