# Virus Predictor

# I worked on this challenge [by myself, with: Alex Gonzalez].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative links files together, getting data from another file.
# Require_relative links a file in the same directory. Require links a file from a different location. Require can also pull in ruby files, gems, etc.
require_relative 'state_data'

class VirusPredictor
# We are initializing a new instance of our VirusPredictor class with input of state_of_origin, population_density, and population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Virus_effects show us the output of the information from a particular state. It shows us the predicted deaths and speed of spread.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# This method predicts the deaths based on population density and uses the floor method to round down to the nearest whole number. It then prints how many deaths will occur in that state due to the virus outbreak.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# This method is predicting the speed of spread based on the state's population density measured in months. Based on the population density, it tells us how many months it will take to spread across the state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, numbers|
  state = VirusPredictor.new(state_name, numbers[:population_density], numbers[:population])
  state.virus_effects
end

#OR
#STATE_DATA.each do |state_name, numbers|
  #state = VirusPredictor.new(state_name, numbers[:population_density], numbers[:population]).virus_effects
  #end

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

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One of keys uses strings with hash rockets and the other key uses symbols and colons.

# What does require_relative do? How is it different from require?
#The require_relative statement links the files together, it basically copies the input from another file and transfers it to the output file.
#The difference between require_relative and require is the location of the files. If they're in the same directory, require_relative is used. If the other file is located in another directory, you would use require and list the file path.

# What are some ways to iterate through a hash?
# Creating a loop or using the .each method

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The slight changes of the variables stood out the most.

# What concept did you most solidify in this challenge?
# I liked the extra practice of iterating through a hash.