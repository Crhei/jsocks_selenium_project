class PageActions

  # common method to initialize browser
  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    #original location for path: HomePage class
    initial_url = self.path
    #initial_url == "https://jungle-socks.herokuapp.com/"
    initial_url.gsub!("jungle-socks.herokuapp.com", get_environment)
  end

end