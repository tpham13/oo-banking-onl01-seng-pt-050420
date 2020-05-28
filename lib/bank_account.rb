class BankAccount
  attr_accessor :balance, :status
  attr_reader :name   # this make sure that the name can only but read but not changed
  
  def initialize(name)
     @name = name 
     @balance = 1000
     @status = "open"
   
  end 
  
  def deposit (money)
    @balance += money
  end 
  
  def display_balance
   "Your balance is $#{balance}."
  end 
  
  def valid? 
    @status == "open" && @balance > 0? true : false 
  end 
  
  def close_account
    @status = "closed"
  end 
end
