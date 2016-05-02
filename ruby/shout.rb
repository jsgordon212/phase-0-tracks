module Shout

	#def self.yell_angrily(words)
    #	words + "!!!" + " :("
  	#end

  	#def self.yell_happily(words)
  	#	words + "!!!" + ":D :D :D"
  	#end

  	#def self.yell_angrily(words)
    #	words + "!!!" + " :("
  	#end

  	#def self.yell_happily(words)
  	#	words + "!!!" + ":D :D :D"
  	#end

  	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def yell_happily(words)
  		words + "!!!" + ":D :D :D"
  	end

end

class Teacher
	include Shout
end

class Driver
	include Shout
end

puts Teacher.new.yell_happily("You passed the test")
puts  Driver.new.yell_angrily("You hit my car")