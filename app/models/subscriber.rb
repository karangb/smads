class Subscriber < ActiveRecord::Base
  attr_accessible :name, :number
  
  belongs_to :user
  
  def send_message(message)
    
  end
  
end
