class Player
  def initialize(gold_coins, health_points, lives)
  @gold_coins = 0
  @health_points = 10
  @lives = 5
end

  #instance methods
  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if (@gold_coins % 10) == 0) && (@gold_coins != 0)
      return level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if (@health_points <= 0) && (@lives == 0)
      restart
    elsif @health_points <= 0
      @health_points = 10
      @lives -= 1
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end 
