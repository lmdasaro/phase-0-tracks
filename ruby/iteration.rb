##arrays first
array = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]
array.each do |flower|
	puts "#{flower} is a very beautiful flower."
end
puts
puts

array.map! {|flower| flower.upcase}
	puts array
puts
puts


array_2 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]
array_2.keep_if{|x| x != "Orchid"}
	puts array_2
puts
puts

array_3 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]
array_3.delete_if{|flower| flower.length > 6}
	puts array_3
puts
puts

array_4 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]
array_4.select!{|flower| flower.include?("e") }
	puts array_4
puts
puts

array_5 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]
array_5.drop_while{|flower| flower.length < 5 }
	puts array_5
puts
puts

##hashes next
hash = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower",
:veggie5 => "garlic"
}

hash.each do |key,value|
puts key
puts value
end
puts

hash.map {|key, value| puts value.reverse}
puts

hash_2 = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower",
:veggie5 => "garlic"
}
hash_2.keep_if{|key, value| value != "garlic"}
	puts hash_2
puts
puts

hash_3 = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower",
:veggie5 => "garlic"
}
hash_3.delete_if{|key, value| value.length < 6}
	puts hash_3
puts
puts

hash_4 = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower",
:veggie5 => "garlic"
}
hash_4.select!{|key, value| value.include?("a")}
	puts hash_4
puts
puts

hash_5 = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower",
:veggie5 => "garlic"
}
hash_5.reject!{|key, value| value.include?("e")}
	puts hash_5
