Given(/^I navigate to welcome page$/) do
  create_browser
  jsocks.welcome_page.visit
end

Then(/^I input following inventory count "([^"]*)" for zebra, "([^"]*)" for lion, "([^"]*)" for elephant, "([^"]*)" for giraffe$/) do |zebra, lion, elephant, giraffe|
  jsocks.welcome_page.zebra_quantity.send_keys     zebra
  jsocks.welcome_page.lion_quantity.send_keys      lion
  jsocks.welcome_page.elephant_quantity.send_keys  elephant
  jsocks.welcome_page.giraffe_quantity.send_keys   giraffe
end

And(/^I select state (.*) and (.*), click checkout button and verify results on checkout page$/) do |state , rates|
  jsocks.welcome_page.state.send_keys state
  jsocks.welcome_page.checkout_button.click

  subtotal_expected   = jsocks.checkout_page.subtotal.text.gsub(/\$/,'').to_f
  tax_expected        = jsocks.checkout_page.taxes.text.gsub(/\$/,'').to_f
  total_expected      = jsocks.checkout_page.total.text.gsub(/\$/,'').to_f

  rate = rates.to_f
  results =  jsocks.checkout_page.tax_calculator(subtotal_expected, rate)

  binding.pry
  if tax_expected == results[:tax] && total_expected == results[:total]
    puts "Expected and Actual tax rates: #{tax_expected} and totals: #{total_expected} are matching"
  else
    scenario.fail('Expected and Actual rates are not matching')
  end

end