class Subscriber < ActiveRecord::Base
  attr_accessible :name, :number
  
  belongs_to :user
  
  def send_message(message)
    mobile = Mobile.new
    mobile.send_sms self.number, message
  end
  
end
