class Mobile 
  include HTTParty
  base_uri 'api.tropo.com'
  
  def send_sms(number, message)
    token = "155b98d0b352434ba4356c56dbf35bcbde5642b6916488d1749ac57b4f4da5415318522422bb0030250f78ca"
    self.class.get("/1.0/sessions?action=create&token=#{token}&numberToDial=#{number}&msg=#{message}")
  end
end