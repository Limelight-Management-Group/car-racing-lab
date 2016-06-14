class Car
  # read & write speed to a car
  attr_accessor :speed

  def initialize
    # set the speed to 0 when a new car is created
    @speed = 0
  end

  def accelerate(speed_change)
    # add the speed change to the speed to accelerate
    @speed += speed_change
  end

end



# class Dog
#   attr_accessor :name
#   attr_reader :hunger_level

#   def hunger_level=(hunger_level)
#     @hunger_level = hunger_level if hunger_level.class == Fixnum
#   end

#   def eats
#     @hunger_level -= 1
#   end

#   def eats
#     self.hunger_level = 8
#   end

# end
