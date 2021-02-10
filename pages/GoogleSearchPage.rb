require 'page-object'

class GoogleSearchPage
  include PageObject
  
  text_field(:searchTerm, :name => 'q')
  button(:searchSelf, :name => 'btnK')
  
  def search(searchTerm)
    self.browser.goto("https://www.google.com")
    self.searchTerm = searchTerm
    searchSelf
  end
end