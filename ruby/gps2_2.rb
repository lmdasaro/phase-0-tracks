# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") 
# steps: 
 # Allow for the method to take a string argument
 # set default quantity - take the number of items in the string and create a quantity separated by spaces
 # print the list to the console [can you use one of your other methods here?] Print each item back to the user
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity, hash
# steps: 
 # Update the hash with the new items as the key and the quantity of each as the value
# output: hash

# Method to remove an item from the list
# input: hash, item name to remove
# steps:
 # Figure out which item needs to be removed
 # Check if the item exists, IF it does, remove the item from the list. If mulitples of the item exist, only remove 1 item.
 # If it doesn't exist, keep all original items
# output: hash

# Method to update the quantity of an item
# input: hash, item, quantity
# steps:
 # Find the index of the item we want to update
 # Re-write the number of items that exist
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps:
 # Iterate through hash
 # On each iteration, ensure that the output of that item - number pair looks pretty
# output: string

def create_a_list(items)
    item_array = items.split(' ')
    item_hash = {}
    item_array.each do |item|
        item_hash[item] = 1
    end
    return item_hash
end

def add_item_to_list(item_name, item_hash, quantity = 1)
    item_hash.store(item_name, quantity)
    return item_hash
end

def remove_item_from_list(item_name, item_hash)
    item_hash.delete_if {|item, number| item == item_name}
    return item_hash
end

def update_quantity(item_name, item_hash, quantity)
    if item_hash.has_key?(item_name)
        item_hash[item_name] = quantity
    end
    return item_hash
end

def beautify(item_hash)
    puts "Here is your grocery list: "
    puts "-------------------------- "
    puts ""
    item_hash.each {|item, number| puts "#{item}: #{number}"}
end


# grocery_list = create_a_list("carrots apples cereal pizza")

# add_item_to_list("donuts", grocery_list, 5)

# remove_item_from_list("apples", grocery_list)

# update_quantity("carrots", grocery_list, 3)

# beautify(grocery_list)

new_list = create_a_list("donuts peppers milk")

add_item_to_list("lemonade", new_list, 2)
add_item_to_list("tomatoes", new_list, 3)
add_item_to_list("onions", new_list, 1)
add_item_to_list("ice cream", new_list, 4)

remove_item_from_list("lemonade", new_list)
update_quantity("ice cream", new_list, 1)

beautify(new_list)

=begin
    
RELEASE 4 :: COMMENT SECTION
##################

-I learned that when you pseudocode all the steps and already know what your input and output should be, it makes writing code a little easier.
-The tradeoffs of using arrays and hashes for this challenge was that arrays hold a little less information, but were simpler and easier to use.
-A method returns what we ask it. We just need to make sure we ask it for an explicit return when we need it.
-The things you can pass into methods as arguments can be strings, integers, booleans, arrays, hashes, etc.
-We can pass information between methods by making sure our information gets printed outside of the method so it becomes a global variable.
-Some concepts that were solidified in this challenge was the work to add, remove, and update items in an array. However, I still find manipulated nested data a little confusing, but we didn't do that in this challenge.

=end