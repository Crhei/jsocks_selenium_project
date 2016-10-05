class Welcome < PageActions

  def path
    'https://jungle-socks.herokuapp.com'
  end

  def zebra_quantity
    @browser.find_element(:id, 'line_item_quantity_zebra')
  end

  def lion_quantity
    @browser.find_element(:id, 'line_item_quantity_lion')
  end

  def elephant_quantity
    @browser.find_element(:id, 'line_item_quantity_elephant')
  end

  def giraffe_quantity
    @browser.find_element(:id, 'line_item_quantity_giraffe')
  end

  def state
    @browser.find_element(:css, 'select')
  end

  def checkout_button
    @browser.find_element(:css, 'input[type="submit"]')
  end

end