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

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:is_alive) do
    if @food_level > 0 and @sleep_level > 0 and @activity_level > 0
      true
    else
      false
    end
  end

  define_method(:set_food_level) do |current_level|
    @food_level = current_level
  end

  define_method(:time_passes) do |time_passed|
    @food_level -= time_passed
    @sleep_level -= time_passed
    @activity_level -= time_passed
  end

  define_method(:feed) do
    @food_level += 1
  end

  define_method(:add_sleep) do
    @sleep_level += 1
  end




end
