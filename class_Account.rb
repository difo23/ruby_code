class Account
  attr_reader :name, :balance
  #en caso de no enviar el parametro balance en el constructor este toma el valor 100
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1000000)
my_account.withdraw(11, 500000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500000)
my_account.display_balance(1234)