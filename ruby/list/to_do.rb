class TodoList
	attr_accessor :list

	def initialize(x)
		@list= x
	end

	def get_items
		@list
	end

	def add_item(item)
		@list<<item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(x)
		@list[x]
	end
end