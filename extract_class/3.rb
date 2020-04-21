# Understands detecting the browser type, detecting the browser width, and giving the user the correct page
class BrowserPageChooser
  
  SAFARI_SMALL_MESSAGE = "You are using the Safari browser in a small window."
  NOT_SAFARI_OR_BIG_MESSAGE = "You are not using the Safari browser or have a big window."
  
  def initialize
    @browser_checker = BrowserChecker.new
  end
  
  def send_correct_page(browser, window)
    @browser_checker.safari?(browser) && @browser_checker.small?(window) ? SAFARI_SMALL_MESSAGE : NOT_SAFARI_OR_BIG_MESSAGE
  end
end

class BrowserChecker
  def safari?(browser)
    browser.type == "Safari"
  end

  def small?(window)
    window.size < "768px"
  end
end