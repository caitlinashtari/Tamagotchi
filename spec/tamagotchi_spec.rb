require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("dumbo")
      expect(my_pet.name()).to(eq("dumbo"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe('#is_alive') do
    it('is alive if the food level is above 0') do
      my_pet = Tamagotchi.new('dumbo')
      expect(my_pet.is_alive()).to(eq(true))
    end


    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new('dumbo')
      my_pet.set_food_level(0)
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe('#time_passes') do
    it('decreases the amount of food the Tamagotchi has left by 1') do
      my_pet = Tamagotchi.new('dumbo')
      my_pet.time_passes(1)
      expect(my_pet.food_level()).to(eq(9))
    end

    it('decreases the amout of sleep the Tamagotchi has gotten by 1') do
      my_pet = Tamagotchi.new('dumbo')
      my_pet.time_passes(1)
      expect(my_pet.sleep_level()).to(eq(9))
    end

    it('decreases the amount of activity the Tamagotchi has gotten by 1') do
      my_pet = Tamagotchi.new('dumbo')
      my_pet.time_passes(1)
      expect(my_pet.activity_level()).to(eq(9))
    end
  end

  describe('#feed') do
    it('increases food_level by 1') do
      my_pet = Tamagotchi.new('dumbo')
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(11))
    end
  end

  describe('#add_sleep') do
    it('increases sleep_level by 1') do
      my_pet = Tamagotchi.new('dumbo')
      my_pet.add_sleep()
      expect(my_pet.sleep_level()).to(eq(11))
    end
  end

end
