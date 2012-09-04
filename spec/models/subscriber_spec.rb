require 'spec_helper'

describe Subscriber do
  
  it {should belong_to :user}
  
  it "send_message should use mobile to send message" do
    
    subscriber = Subscriber.new(:number => "123")
    Mobile.any_instance.should_receive(:send_sms).with("123", "hello!")
    subscriber.send_message("hello!")
  end
end
