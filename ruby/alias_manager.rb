#set up method for reordering the name - clunky but it works

#set up method for changing vowels

#set up method for changing consonants

#def fake_name (first_name, last_name)
	puts "enter first name & hit enter. then enter last name & hit enter"
	first_name = gets.chomp
	last_name = gets.chomp
	

	p first_name.prepend ("#{last_name} ")
	
