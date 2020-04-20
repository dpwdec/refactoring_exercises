def tell_browser_type(browser)
  
  message = browser.type == "Safari" ? "You are using the Safari browser." : "You are using a non-Safari browser."
  
  puts message
end