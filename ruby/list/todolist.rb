class TodoList
	def initialize(item)
		@list = item
		
	end 

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end 

	def delete_item(item)
		@list.delete(item)	
	end	

	def get_item(i)
		@list[i]
	end	
end	

# new_list = TodoList.new("do the dishes", "mow the lawn")
# puts new_list