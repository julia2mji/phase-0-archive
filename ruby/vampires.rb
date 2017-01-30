#i had trouble getting the loops to run for the number of times i wanted to. 
#the program doesn't exactly follow the specified directions but i just wanted to get it to run.
#i've left some of my original code in the comments to show what i was thinking.


puts "how many employees?"
employees = gets.to_i

while employees < 2
puts "what's your name?"
your_name = gets.chomp

puts "how old are you? what year were you born?"
age = gets.to_i
year_born = gets.to_i

puts "can i get you some garlic bread?"
garlic_bread = gets.chomp

puts "would you like health insurance?"
health_ins = gets.chomp 

puts "do you have any allergies?" 
allergy_results = gets.chomp

curr_year = 2017
#name_arr = ["drake", "cula", "tu", "fang"]
#allergy_results = gets.chomp

	if (curr_year - age != year_born) && (garlic_bread == "no" && health_ins == "yes")
		puts "probably a vampire"
	elsif garlic_bread == "yes" && health_ins == "yes"
		puts "probably not a vampire"
	elsif (curr_year - age != year_born) && (garlic_bread == "no" && health_ins == "no")
		puts "almost certainly a vampire"
	elsif your_name == "drake"  #your_name_arr.include? ("drake")
		puts "definitely a vampire"
	elsif your_name == "cula"  #your_name_arr.include? ("cula")
		puts "definitely a vampire"	
	elsif your_name == "tu"  #your_name_arr.include? ("tu")
		puts "definitely a vampire"
	elsif your_name == "fang"  #your_name_arr.include? ("fang")
		puts "definitely a vampire"		
	elsif allergy_results = "sunshine"	
		puts "probably a vampire"
	else 
		"results inconclusive"	
	end

end 

while employees >= 2

puts "what's your name?"
your_name = gets.chomp

puts "how old are you? what year were you born?"
age = gets.to_i
year_born = gets.to_i

puts "can i get you some garlic bread?"
garlic_bread = gets.chomp

puts "would you like health insurance?"
health_ins = gets.chomp 

puts "do you have any allergies?" 
allergy_results = gets.chomp

curr_year = 2017
#name_arr = ["drake", "cula", "tu", "fang"]
#allergy_results = gets.chomp

	if (curr_year - age != year_born) && (garlic_bread == "no" && health_ins == "yes")
		puts "probably a vampire"
	elsif garlic_bread == "yes" && health_ins == "yes"
		puts "probably not a vampire"
	elsif (curr_year - age != year_born) && (garlic_bread == "no" && health_ins == "no")
		puts "almost certainly a vampire"
	elsif your_name == "drake"  #your_name_arr.include? ("drake")
		puts "definitely a vampire"
	elsif your_name == "cula"  #your_name_arr.include? ("cula")
		puts "definitely a vampire"	
	elsif your_name == "tu"  #your_name_arr.include? ("tu")
		puts "definitely a vampire"
	elsif your_name == "fang"  #your_name_arr.include? ("fang")
		puts "definitely a vampire"		
	elsif allergy_results = "sunshine"	
		puts "probably a vampire"
	else 
		"results inconclusive"	
	end

	puts "actually, never mind! what do these questions have to do with anything? let's all be friends."


end 	

# until allergy_results = "done"
# 	puts "do you have any allergies? when finished, type 'done'" 

# 	if allergy_results == "sunshine"
# 		puts "probably a vampire"
#  	end
# end 		




#puts "actually, never mind! what do these questions have to do with anything? let's all be friends."

