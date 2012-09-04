class Mobile 
  include HTTParty
  base_uri 'api.tropo.com'
  
  def send_sms(number, message)
    token = "155cfd2913673d4aac374e1e9ade2ea38e89662e5640034aa2e7db98e63b1f9052b57fab1f89f9e707bda8c7"
    self.class.get("/1.0/sessions?action=create&token=#{token}&numberToDial=#{number}&msg=#{message}")
  end
end