def send_correct_page(browser, window)

  safari_small_message = "You are using the Safari browser in a small window."
  not_safari_or_big_message = "You are not using the Safari browser or have a big window."

  browser_type(browser.type, window.size) ? safari_small_message : not_safari_or_big_message
end

def browser_type(type, size)
  type == "Safari" && size < "768px"
end