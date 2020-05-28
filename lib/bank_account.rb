class BankAccount
  attr_accessor :name 
  
  def initialize(name)
     @name = name 
  end 

  def balance(amount = 1000)
    @amount = amount 
  end 

  def status(status = "open")
    @status = status 
  end 
  
end
