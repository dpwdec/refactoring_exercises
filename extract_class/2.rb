# Understands detecting the browser type and sending the user a message
class BrowserMessage
  
  SAFARI_MESSAGE = "You are using the Safari browser."
  NOT_SAFARI_MESSAGE = "You are not using a Safari browser."
  
  def initialize
    @browser_checker = BrowserChecker.new
  end
  
  def tell_browser_type(browser)
    puts @browser_checker.safari?(browser) ? SAFARI_MESSAGE : NOT_SAFARI_MESSAGE
  end
end

class BrowserChecker
  def safari?(browser)
    browser.type == "Safari"
  end
end