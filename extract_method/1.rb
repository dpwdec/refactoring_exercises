def send_email_to(user)
  mail  = Mail.new(get_email_body(user))
  
  mail.send_message
end

def get_email_body(user)
  user.email.strip
end

