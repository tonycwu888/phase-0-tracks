class TodoList
  def initialize(list)
    @list = list
  end
  def get_items
    @list
  end
  def add_item(item)
    @list << item
  end
  def delete_item(item)
    @list.delete_if { |i| i == item }
  end
  def get_item(index)
    @list[index]
  end
end
list = TodoList.new(["do the dishes", "mow the lawn"])
