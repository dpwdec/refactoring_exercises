def send_correct_page(browser, window)
  
  message = ""
  
  if(browser.type == "Safari" && window.size < "768px")
    message = "You are using the Safari browser in a small window."
  else
    message = "You are not using the Safari browser or have a big window."
  end
  
  return message
end