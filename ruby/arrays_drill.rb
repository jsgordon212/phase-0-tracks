#arrays_drill.rb

def build_array(one, two, three)

	output = [one, two, three]
	return output

end

def add_to_array(array, item)

	return array.push(item)
end

test_array = build_array("first", "second", "third")
p test_array

add_to_array(test_array, "fourth")
p test_array


my_array = []
p my_array

my_array += [1,2,3,4,5]
p my_array

my_array.delete_at(2)
p my_array

my_array.insert(2, "new thing")
p my_array

my_array.shift
p my_array

p "This array contains a five: #{my_array.include?(5)}"

new_array = ["one", "two", "three", "four", "five"]


combined_array = my_array.concat(new_array)

p combined_array
