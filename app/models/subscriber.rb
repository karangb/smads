class Subscriber < ActiveRecord::Base
  attr_accessible :name, :number
  
  belongs_to :user
end
