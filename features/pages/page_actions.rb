class PageActions

  # common method to initialize browser
  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    #original location for path: WelcomePage class
    self.path
  end

end