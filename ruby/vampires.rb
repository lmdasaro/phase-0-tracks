real_name = true
real_age = true
garlic_bread = true
sign_up = true
result = "Result inconclusive."

puts "What is your name?"
name = gets.chomp
name = name.downcase
if (name == "drake cula") || (name == "tu fang")
		real_name = false
end

puts "How old are you? What year were you born?"
age = gets.chomp
year = gets.chomp
if (2016 - year.to_i) != age.to_i
	    real_age = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
order_bread = gets.chomp
if (order_bread == "n")
        garlic_bread = false
end

puts "Would you like to enroll in the company's health insurance?(y/n)"
insurance = gets.chomp
if (insurance == "n")
        sign_up = false
end


if real_age && ( garlic_bread || sign_up )
	result = "Probably not a vampire."
end
if !real_age && ( !garlic_bread || !sign_up )
	result = "Probably a vampire."
end
if !real_age && !garlic_bread && !sign_up
	result = "Almost certainly a vampire."
end
if !real_name
	result = "Definitely a vampire."
end


puts "#{result}"