#iteration.rb

favorite_teams = {football: "Jets", basketball: "Knicks", baseball: "Yankees"}

worst_teams = ["Celtics", "Red Sox", "Patriots"]

p favorite_teams

favorite_teams.each do |key, value|

	favorite_teams[key] = "The NY #{value}"

end

p favorite_teams

p worst_teams

really_worst_teams = worst_teams.map { |x| "The #{x} are terrible" } 

p really_worst_teams

really_worst_teams.each do |x|

	puts x + ", just terrible"
end



simple_array = [1, 12, 3, 14, 5, 16]

simple_hash = {first: 10, second: 20, third: 30, fourth: 40, fifth: 50}

simple_array.delete_if { |num| num < 4 }

simple_hash.delete_if { |order, num| order == "third" }

simple_hash.keep_if { |num| num == 14}

simple_hash.keep_if { |order, num| num != 20}

simple_array.reject { |num| num > 15 }

simple_hash.reject { |order, num| order == "fifth"}

p simple_hash

p simple_array




