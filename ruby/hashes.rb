#In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" formatting are needed (as in the case of using someone's full name as a hash key). Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.

# Your program should ...

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

#pseudocode
#prompt using puts for all of the required info
#convert input to integer/string form using gets.to_i, etc. 
#put colors, themes, etc. into arrays? 
#set up hash with client data, the client's name, age, number of children, decor theme, and so on
#print hash to screen
#update the hash? but with what? 
#print updated hash using p. __ <- hash name 

#okay, so there are quite a few things i'm doing wrong here
#i need to use symbols and i'm trying to think of a way to make the hash without pushing in the entered data? 
#but howwwww? 

preferred_themes = [] 
fave_colors = []
ugly_colors = []

client_profile = {}


puts "Your full name?"
full_name = gets.chomp
client_profile[full_name] = "#{full_name}" 

client_profile.each do |full_name|
p "Name : #{full_name} "

puts "Age?"
age = gets.to_i
client_profile[age] = "#{age}"

puts "Number of Children?"
child = gets.to_i
client_profile[child] = "#{child}"

loop do 
	puts "Preferred Decor Themes? Type 'none', if unknown. Type 'done', when done" 
	decor_theme = gets.chomp
	break if decor_theme == "none" || decor_theme == "done"
	preferred_themes << decor_theme
	client_profile[decor_theme] = preferred_themes
end 

loop do 
	puts "Favorite Colors? Type 'none', if none. Type 'done', when done" 	
	color = gets.chomp
	break if color == "none" || color == "done"
	fave_colors << color 
	client_profile[color] = fave_colors
end 

loop do
	puts "Hated Colors? Type 'none', if none. Type 'done', when done"	
	hate_color = gets.chomp
	break if hate_color == "none" || hate_color == "done"
	ugly_colors << hate_color
	client_profile[hate_color] = ugly_colors
end 

p client_profile



