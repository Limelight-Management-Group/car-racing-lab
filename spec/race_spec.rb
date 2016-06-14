require 'spec_helper'

RSpec.describe Race do
  let(:race) { Race.new }
  describe '::new' do

    it 'instantiates two cars' do
      expect(race.cars.count).to eq(2)
    end


    it 'accelerates the cars to random speeds' do
      expect(race.cars.first.speed).should_not eq(race.cars .last.speed)
    end
  end
  describe '#winner' do
    it 'returns the winner' do
    first_car = race.cars.first
    last_car = race.cars.last
    winner = first_car.speed > last_car.speed ? first_car.speed : last_car.speed
    expect(race.winner.speed).to eq(winner)
  end

    it 'is not the loser' do
      first_car = race.cars.first
      last_car = race.cars.last
      winner = first_car.speed > last_car.speed ? first_car.speed : last_car.speed
      loser = first_car.speed < last_car.speed ? first_car.speed : last_car.speed

      expect(race.winner.speed).to_not be(loser)

    end

  end

  describe '#loser' do
    it 'returns the loser' do
      first_car = race.cars.first
      last_car = race.cars.last
      loser = first_car.speed < last_car.speed ? first_car.speed : last_car.speed
      expect(race.loser.speed).to eq(loser)
    end
    it 'is not the winner' do
      first_car = race.cars.first
      last_car = race.cars.last
      winner = first_car.speed > last_car.speed ? first_car.speed : last_car.speed
      loser = first_car.speed < last_car.speed ? first_car.speed : last_car.speed

      expect(race.loser.speed).to_not be(winner)

    end
  end
end


# crequire_relative "../models/dog"

# describe Dog do
#   subject (:dog) { Dog.new }

# before do
#   dog.hunger_level = 9
# end

# describe Dog do
#   describe "::new" do #class method if you used #new, that's an instance
#     it "initializes a new dog" do
#       expect(dog).to be_a(Dog)
#     end
#   end
# describe "#name" do
#     it "allows the reading and writing of a name" do

#       dog.name = "Fido"
#       expect(dog.name).to eq("Fido")
#     end
#   end
# describe "#hunger_level" do
#     it "allows the reading and the writing of the dog" do

#       dog.hunger_level = 9
#       expect(dog.hunger_level).to eq(9)
#     end


#     it "represents the hunger_level level with an number" do

#       dog.hunger_level = 9
#       expect(dog.hunger_level).to be_a(Integer)
#     end



#     it "only takes an Integer" do

#       dog.hunger_level = 9
#       expect(dog.hunger_level).to be_a(Integer)
#     end

# end

#   describe "#eats" do

#     it "can eat and decrements hunger_level by one" do

#       dog.hunger_level = 9
#       dog.eats
#       expect(dog.hunger_level).to be(8)
#     end

#     it "satisfied when it eats" do

#       dog.hunger_level = 8
#       dog.eats
#       expect("mmmm")
#     end
#   end
# end
