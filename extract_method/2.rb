def tell_browser_type(browser)
  puts define_browser_message(browser.type)
end

def define_browser_message(type)
  type == "Safari" ? "You are using the Safari browser." : "You are using a non-Safari browser."
end