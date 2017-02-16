# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  #setting up state, population, and population density as instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  #instance method taking in certain parameters, a function call. 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #changing the value of number of deaths based on population density
  def predicted_deaths
=begin   
    # predicted deaths is solely based on population density
    number_of_deaths = 0

    #multiplier starts at 0.4  -= 0.1 
    #pop density starts at 200 and decreases by 50, <= 
   loop do 
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end
   end 

    number_of_deaths.floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  

  end
=end 
  factor = case @population_density
    when 0...50 then 0.05
    when 50...100 then 0.1
    when 100...150 then 0.2
    when 150...200 then 0.3
    else 0.4
   end
  number_of_deaths = (@population * factor).floor
  p "#{@state} will lose #{number_of_deaths} people in this outbreak"
end

  #conditionals aobut speed of spread based on population density
def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    factor = case @population_density
      when 0...50 then speed += 2.5
      when 50...100 then speed += 2
      when 100...150 then speed += 1.5
      when 150...200 then speed += 1
      else += 0.5
    end  

    puts " and will spread across the state in #{speed} months.\n\n"

  end 
end

STATE_DATA.each do |state, population_data|
  VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
  
# What are the differences between the two different hash syntaxes shown in the state_data file? They are nested hashes. One is the outside and the other is the inner. 
# What does require_relative do? How is it different from require? require relative requires a related file. require is more general and you can require different unrelated files.
# What are some ways to iterate through a hash? .each, map, for, while, do 
# When refactoring virus_effects, what stood out to you about the variables, if anything? How much redundancy there was before we refactored it and how many times you don't need to declare and have methods taking in all of the different instance variables.
# What concept did you most solidify in this challenge? Refactoring the methods and re-setting up the driver code methods. 

