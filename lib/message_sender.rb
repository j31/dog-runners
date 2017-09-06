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
    @runners = {
      "46709501502" => "Fredrik Nordmark",
      "46768261337" => "Caspar Wikström"
    }
  end

  def send_message(run_id, to, message)
    @runners.each do |key, value|
      @client.messages.create(
        from:  46765193211,
        to:    key,
        body:  "Hello #{value}," message,
      )
    end
  end
end
