class Mail
  def initialize(email, fancy = false)
    @email = email
    @message = "Welcome to MyProduct"
    @message += ", fancy person!" if fancy
  end

  def send_message
      MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: @message })
  end
end