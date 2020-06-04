
class Transfer
  attr_reader  :sender, :receiver
  attr_accessor :status, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid? 
    sender.valid? && receiver.valid?
  end 
  
  def reject_transfer             
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end

  def execute_transaction 
    if valid? && sender.balance > amount && self.status == "pending"
    sender.balance -= amount
    receiver.balance += amount 
    @status = "complete"  
    
    else 
    reject_transfer         #Is there another way to do this without having the reject_transfer method?
    end
     
  end 

  def reverse_transfer
    if valid? && receiver.balance > amount && self.status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      self.status = "reversed"
    else
      reject_transfer
    end
  end
   
end 