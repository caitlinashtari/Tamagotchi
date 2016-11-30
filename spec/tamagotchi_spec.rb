require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  before() do
    Tamagotchi.clear()
  end
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

  describe('#play') do
    it('increases activity_level by 1') do
      my_pet = Tamagotchi.new('dumbo')
      my_pet.play()
      expect(my_pet.activity_level()).to(eq(11))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Tamagotchi.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a tamagotchi to the array of saved tamagotchis") do
      test_tamagotchi = Tamagotchi.new('Dumbo')
      test_tamagotchi.save()
      expect(Tamagotchi.all()).to(eq([test_tamagotchi]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved tamagotchis") do
      Tamagotchi.new("Dumbo").save()
      Tamagotchi.clear()
      expect(Tamagotchi.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the tamagotchis") do
      test_tamagotchi = Tamagotchi.new("Dumbo")
      test_tamagotchi.save()
      expect(test_tamagotchi.id()).to(eq(1))
    end
  end

  describe(".find") do
  it("returns a tamagotchi by its id number") do
    test_tamagotchi = Tamagotchi.new('Dumbo')
    test_tamagotchi.save()
    test_tamagotchi2 = Tamagotchi.new('Slumbo')
    test_tamagotchi2.save()
    expect(Tamagotchi.find(test_tamagotchi.id())).to(eq(test_tamagotchi))
  end
end

end
