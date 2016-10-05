class Checkout < PageActions


  def subtotal
    @browser.find_element(:id, 'subtotal')
  end

  def taxes
    @browser.find_element(:id, 'taxes')
  end

  def total
    @browser.find_element(:id, 'total')
  end

  # accepts subtotal and tax rate
  # returns hash with tax and total
  def tax_calculator(subtotal, rate)

    tax = subtotal * rate
    total = tax + subtotal

    { tax: tax, total: total}
  end

end