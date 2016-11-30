class Tamagotchi
  @@tamagotchi_levels = []

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @time = Time.now.to_i
    @id = @@tamagotchi_levels.length().+(1)
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

  define_method(:id) do
    @id
  end

  define_method(:time_passes) do |current_time|
    @food_level -= current_time
    @sleep_level -= current_time
    @activity_level -= current_time
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



  define_method(:feed) do
    @food_level += 1
  end

  define_method(:add_sleep) do
    @sleep_level += 1
  end

  define_method(:play) do
    @activity_level += 1
  end

  define_singleton_method(:all) do
    @@tamagotchi_levels
  end

  define_method(:save) do
   @@tamagotchi_levels.push(self)
 end

 define_singleton_method(:clear) do
    @@tamagotchi_levels = []
  end

  define_singleton_method(:find) do |identification|
      found_tamagotchi = nil
      @@tamagotchi_levels.each() do |tamagotchi|
        if tamagotchi.id().eql?(identification.to_i())
          found_tamagotchi = tamagotchi
        end
      end
      found_tamagotchi
    end





end
