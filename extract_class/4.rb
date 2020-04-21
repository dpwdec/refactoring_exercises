# Understands connecting to a mail server and sending a fancy or non-fancy message to the user
class Mail
  def initialize(email, fancy = false)
    @email = email
    @body = Body.new(fancy)
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    mail_server.send_message({ to: @email, body: @body.generate })
  end
end

class Body
  def initialize(fancy = false)
    @fancy = fancy
  end
  
  def generate
    base_body = "Welcome to MyProduct"
    @fancy ? "#{ base_body }, fancy person!" : base_body
  end
end