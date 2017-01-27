puts "how many employees?"
employees = gets.chomp

puts "what's your name?"
your_name = gets.chomp

puts "how old are you? what year were you born?"
age = gets.chomp
year_born = gets.chomp

puts "can i get you some garlic bread?"
garlic_bread = gets.chomp

puts "would you like health insurance?"
health_ins = gets.chomp 

curr_year = 2017
name_arr = ["drake", "cula", "tu", "fang"]
allergy_results = gets.chomp

while employees >= 1
	if (curr_year - age != year_born) && (garlic_bread == "no" && health_ins == "yes")
		puts "i think we've got a vampire dude"
	elsif garlic_bread == "yes" && health_ins == "yes"
		puts "probably not a vampire"
	elsif (curr_year - age != year_born) && (garlic_bread == "no" && health_ins == "no")
		puts "almost certainly a vampire"
	elsif name_arr.include? ("drake")
		puts "definitely a vampire"
	elsif name_arr.include? ("cula")
		puts "definitely a vampire"	
	elsif name_arr.include? ("tu")
		puts "definitely a vampire"
	elsif name_arr.include? ("fang")
		puts "definitely a vampire"			
	else 
		"results inconclusive"	
	end
end 

until allergy_results = "done"
	puts "do you have any allergies? when finished, type 'done'" 

	if allergy_results == "sunshine"
		puts "probably a vampire"
	end
end 		




puts "actually, never mind! what do these questions have to do with anything? let's all be friends."

