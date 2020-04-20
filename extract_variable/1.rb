def send_email_to(user)
  strip = user.email.strip
  
  mailer = Mail.new(strip)
  
  mailer.send_message
end