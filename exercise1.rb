class BankAccount
  def initialize(balance, interest_rate)
    #memorize the input
    #instance variables
    @balace = balance
    @interest_rate = interest_rate
  end

  #attribute readers
  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  #attribute writers
  def balance=(balance)
    @balance = balance
  end

  def interest_rate=(interest_rate)
    @interest_rate = interest
  end

  #instance methods

  def deposit(amount)
    @balance += amount
    return (@balance).round(2)
  end

  def withdraw(amount)
    @balance -= amount
    return (@balance).round(2)
  end

  def gain_interest
    @balance += (balance * interest_rate)
    return (@balance).round(2)
  end
end
