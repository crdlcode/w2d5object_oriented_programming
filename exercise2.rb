class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @prefferred_food = preferred_good
    @meal_time = meal_time
  end

  #instance methods
  def eats_at
    if @meal_time > 12
      return "#{@meal_time-12}pm"
    elsif @meal_time == 12
      "#{@meal_time}pm"
    else
      "#{@meal_time} am"
    end
  end

  def meow
    return "Meow, I am #{@name} and I eat #{@prefferred_food} at #{eat_at}"
  end
