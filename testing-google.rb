require 'watir'

b = Watir::Browser.new :firefox
b.goto 'http://www.google.com'

b.text_field(:name => 'q').set 'potatoes'
b.button(:name => 'btnK').click

b.screenshot.save 'screenshot-potatoes.png'

b.close