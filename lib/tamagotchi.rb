class Tamagotchi
  @@tamagotchi_levels = []

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:is_alive) do
    if @food_level > 0 and @sleep_level > 0 and @activity_level > 0
      true
    else
      false
    end
  end

  define_method(:set_food_level) do
    @food_level = 0
  end

end
