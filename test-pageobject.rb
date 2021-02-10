require 'watir'
require_relative 'pages/GoogleSearchPage'
require 'fileutils'
require 'watir-screenshot-stitch'

FileUtils.mkdir_p 'screenshots'

browser = Watir::Browser.new :firefox
page_object = GoogleSearchPage.new(browser)

page_object.search("carrots")
# browser.screenshot.save 'screenshots/carrots.png'

png = browser.screenshot.base64_canvas
path = "screenshots/carrots.png"
File.open(path, 'wb') { |f| f.write(Base64.decode64(png)) }
