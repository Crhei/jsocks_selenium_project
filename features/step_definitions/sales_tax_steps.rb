Given(/^I navigate to welcome page$/) do
  create_browser
  jsocks.welcome_page.visit
end

And(/^I input following inventory count "([^"]*)" items for zebra with price of "([^"]*)", "([^"]*)" items for lion with price of "([^"]*)", "([^"]*)" items for elephant with price of "([^"]*)", "([^"]*)" items for giraffe with price of "([^"]*)"$/) do |zebra_count, zebra_price, lion_count, lion_price, elephant_count, elephant_price, giraffe_count, giraffe_price|
  jsocks.welcome_page.zebra_quantity.send_keys     zebra_count
  jsocks.welcome_page.lion_quantity.send_keys      lion_count
  jsocks.welcome_page.elephant_quantity.send_keys  elephant_count
  jsocks.welcome_page.giraffe_quantity.send_keys   giraffe_count

  zebra_total    =  zebra_count.to_i * zebra_price.to_i
  lion_total     =  lion_count.to_i * lion_price.to_i
  elephant_total =  elephant_count.to_i * elephant_price.to_i
  giraffe_total  =  giraffe_count.to_i * giraffe_price.to_i

  @subtotal_expected = zebra_total + lion_total + elephant_total + giraffe_total

end

And(/^I select state (.*) and (.*), click checkout button and verify results on checkout page$/) do |state , rates|
  jsocks.welcome_page.state.send_keys state
  jsocks.welcome_page.checkout_button.click

  subtotal_actual   = jsocks.checkout_page.subtotal.text.gsub(/\$/,'').to_f

  # compares expected and actual subtotal results
  if @subtotal_expected == subtotal_actual
    puts "\nExpected and Actual subtotal results: $#{subtotal_actual} are matching"
  else
    scenario.fail('Expected and Actual subtotal results are not matching')
  end

  tax_expected        = jsocks.checkout_page.taxes.text.gsub(/\$/,'').to_f
  total_expected      = jsocks.checkout_page.total.text.gsub(/\$/,'').to_f

  rate = rates.to_f
  results =  jsocks.checkout_page.tax_calculator(subtotal_actual, rate)

  # compares expected and actual tax and total results
  if tax_expected == results[:tax] && total_expected == results[:total]
    puts "\nExpected and Actual tax rate results: $#{tax_expected} and total results: $#{total_expected} are matching"
  else
    scenario.fail('Expected and Actual rates are not matching')
  end

end

