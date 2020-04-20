# Understands sanitising a user's email and sending them an email
class UserContacter
  def initialize
    @santiser = EmailSanitiser.new
  end
  
  def send_email_to(user)
    mail = Mail.new(@santiser.sanitised_email_for(user))
    
    mail.send_message
  end
end

class EmailSanitiser
  def sanitised_email_for(user)
    email.strip
  end
end