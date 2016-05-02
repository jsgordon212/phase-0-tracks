
class Character

	attr_reader :level, :name
	attr_accessor :weapon, :vocation


	def initialize(name, vocation, weapon)

		@name = name
		@vocation = vocation
		@weapon = weapon
		@level = 0
	end

	def level_up
		@level += 1
	end

	def cast_spell(spell)
		puts "#{@name} the #{@vocation} casts #{spell}!"
	end

	def use_weapon
		puts "#{@name} the #{@vocation}attacks with #{@weapon}!"
	end

end



character_list = []
puts "Create a new character? (yes/no)"

ans = gets.chomp

	while ans.eql?('yes')

		puts "Enter your characters name"
		name = gets.chomp
		puts "Enter your characters starting class (example: Wizard, Soldier, Bard, Monk, Sorcerer, Necromancer)"
		job = gets.chomp
		puts "Enter your characters starting weapon (example: Sword, Flaming Battle Axe, Staff)"
		weapon = gets.chomp
		character_list << Character.new(name.capitalize, job.capitalize, weapon.capitalize)
		puts "Create another character? (yes/no)"
		ans = gets.chomp
	end

character_list.each do |character|
	
	puts "Name: #{character.name} " 
	puts "Class: #{character.vocation}" 
	puts "Weapon: #{character.weapon}"
	puts "Level: #{character.level}"

end