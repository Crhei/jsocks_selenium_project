require 'selenium-webdriver'
require 'rspec'
require 'pry'

require 'json'


require_relative "../pages/page_actions.rb"
Dir["../page_models/*.rb"].each {|file| require file}


def get_browser
  (ENV['BROWSER'] || :firefox).to_sym
end

def create_browser
  @browser = Selenium::WebDriver.for get_browser
end

def jsocks
  @jsocks ||= Jsocks.new @browser
end
