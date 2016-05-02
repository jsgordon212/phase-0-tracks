class TodoList

	def initialize(todo)
		@todo = todo
	end

	def add_item(item)
		@todo << item
	end

	def get_items
		@todo
	end

	def delete_item(item)
		@todo.delete(item)
	end

	def get_item(index)
		@todo[index]
	end
end
