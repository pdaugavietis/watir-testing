require 'watir'
require_relative 'pages/GoogleSearchPage'
require 'fileutils'

FileUtils.mkdir_p 'screenshots'

browser = Watir::Browser.new :firefox
page_object = GoogleSearchPage.new(browser)

page_object.search("carrots")
browser.screenshot.save 'screenshots/carrots.png'