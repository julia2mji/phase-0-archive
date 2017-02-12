# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#   	words + "!!!" + " :("
#   end
  
#   def self.yell_happily(words)
#   	words + "~~" + " :)"
#   end		
# end

# :yell_angrily("you were late") 
# :yell_happily("you were late
#having trouble with my driver code

module Shout
	def yell_angrily(words)
  	puts "#{words}" + "!!!" + " :("
  	end

  	def yell_happily(words)
  	puts "#{words}" + "~~" + " :)"
  	end
end

  class Man
  	include Shout
  end 
  	
  class Woman
  	include Shout 
  end

  man = Man.new
  man.yell_happily("you were late")

  woman = Woman.new
  woman.yell_angrily("you were late")		 	