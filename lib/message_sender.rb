class MessageSender
  def self.send_message(run_id, to, message)
    new.send_message(run_id, to, message)
  end

  def initialize
    # To find TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN visit
    # https://www.twilio.com/console
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token  = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_message(order_id, to, message)
    @client.messages.create(
      from:  46765193211,
      to:    46709501502,
      body:  message,
    )
  end
end
