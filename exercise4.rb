class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

#attribute readers
  def name
    @name
  end

  def experience
    @experience
  end

  def earningg
    @earnings
  end

  def quota
    @quota
  end

  def deliver(start_address,end_address)
    number_papers = (end_address - start_address).abs + 1
    if (number_papers >= quota)
      #earnings at standard rate up to quota
      @earnings +=  quota * 0.25
      #earnings at bonus above quota
      @earnings += (number_papers - quota) * 0.5
    else
      #earning at a normal rate since not above quota
      @earnings += number_papers * 0.25
      #subract 2 if quota not met
      @earning -= 2
    end
    @experience += number_papers
  end
  def report
    "I'm #{name}, I've delivered #{experience} papers and earned $#{earnings.round(1)} so far!"
  end
end
