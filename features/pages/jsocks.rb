class Jsocks < PageActions

  def welcome_page
  @welcome_page    ||=  Welcome.new @browser
  end

  def checkout_page
    @checkout_page ||=  Checkout.new @browser
  end
end