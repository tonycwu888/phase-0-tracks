# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split the string into an array
  # create empty hash
  # set each element as a key in the hash
  # set default quantity to 1
  # send result to print method
# output: hash

# Method to add an item to a list
# input: hash, item name and optional quantity
# steps: add item to hash
# output: hash

# Method to remove an item from the list
# input: hash, item name
# steps: compare item with hash keys
#   # if we find it, delete it
#   # else spit out error message - item not found
# output: hash

# Method to update the quantity of an item
# input: hash, item name, quantity
# steps: find item in hash, set value to new qty
# if item doesnt exist, add the new item
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps: go through each key in the hash, print key & qty (Lemonade, Qty: 3)
# output: prints a string, returns nil

def create_list(groceries_hash)
    print_list(groceries_hash)
end

def add_item(groceries_hash, item_name, qty=1)
    groceries_hash[item_name] = qty
    puts ""
    puts "Here is your updated grocery list with the (#{item_name}) added:"
    print_list(groceries_hash)
end

def remove_item(groceries_hash, item_name)
    if groceries_hash.include?(item_name)
        groceries_hash.delete(item_name)
    else
        puts "******************"
        puts "ERROR: (#{item_name}) is not in your grocery list."
        puts "******************"
        return
    end
    puts ""
    puts "Here is your updated grocery list with the (#{item_name}) removed:"
    print_list(groceries_hash)
end

def update_quantity(groceries_hash, item_name, qty)
    groceries_hash[item_name] = qty
    puts ""
    puts "Here is a revision with the number of (#{item_name}) updated:"
    print_list(groceries_hash)
end

def print_list(groceries_hash)
    puts ""
    puts "==== Grocery List ======"
    groceries_hash.each do |item, qty|
        puts "#{item} - Qty: #{qty}"
    end
    puts "========================"
end

groceries_hash = {
    "Lemonade" => 2,
    "Tomatoes" => 3,
    "Onions" => 1,
    "Ice Cream" => 4
}

create_list(groceries_hash)
remove_item(groceries_hash, "Lemonade")
remove_item(groceries_hash, "ice tea")
update_quantity(groceries_hash, "Ice Cream", 1)
