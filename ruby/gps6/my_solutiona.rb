# Virus Predictor

# I worked on this challenge [by myself, with: sumaiya].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#The require_relative statement links the files together, it basically copies the input from another file and transfers it to the output file.
#The difference between require_relative and require is the location of the files. If they're in the same directory, require_relative is used. If the other file is located in another directory, you would use require and list the file path.
require_relative 'state_data'

class VirusPredictor
#This method initializes a new instance of the VirusPredictor class. It takes: state_of_origin, population_density, and population as parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#This method calls subsequent methods:predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
#This method takes the parameters of population_density, population, and state. It predicts the number_of_deaths based on population_density.
  def predicted_deaths(population_density, population, state)
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
#This method takes population_density and state as its parameters. The speed is affected by population_density.
  def speed_of_spread(population_density, state) #in months
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
states = []

STATE_DATA.each do |state, data|
  new_state = VirusPredictor.new(state, data[:population_density], data[:population])
  new_state.virus_effects
end

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
