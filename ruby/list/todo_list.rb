class TodoList
 def initialize(first_arg)
   @array = first_arg
 end
 def get_items
   @array
 end

 def add_item(new_item)
   @array.push(new_item)
 end

 def delete_item(delete_item)
     @array.delete(delete_item)
 end

 def get_item(place)
   @array[place]
 end
end
