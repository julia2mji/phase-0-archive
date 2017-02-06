# a few notes: 
#i ran out of time and didn't have a chance to figure out how to identify and change the vowels and consonants
#i tried to put in some code that would display the overall vowel and consonant counts but it kept crashing the program so i had to comment it out

#set up method for reordering the name - clunky but it works

#set up method for changing vowels & consonants
	#set up my vowels in a string or array that i can look through? 
	#map and .next 
	#could i split on vowels? consonants? 
	# how do i remove the ! from the current output

loop do
	puts "enter first name & hit enter. then enter last name & hit enter. to exit, type 'quit'"
	first_name = gets.chomp
	last_name = gets.chomp
	
	break if first_name == "quit" || last_name == "quit"

	full_name = first_name.prepend ("#{last_name} ")

	p full_name
	
	
	#puts "the number of vowels in your name is: " full_name.count ("aeiou")
	

	
	#puts "the number of consonants in your name is: " full_name.count ("bcdfghjklmqprstvwxyz")
		
	

	vowel = ["a", "e", "i", "o", "u"]
	new_vowels = "#{full_name}".split ("")
	p new_vowels

	p new_vowels.map! { |vowel| vowel.next }

	name2 = new_vowels.join ("")

	p "your coded name is: #{name2}" 
	
end 

	




	