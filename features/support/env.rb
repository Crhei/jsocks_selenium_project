require 'selenium-webdriver'
require 'rspec'
require 'pry'

require 'json'


require_relative "../pages/page_actions.rb"
Dir["../page_models/*.rb"].each {|file| require file}



SERVER_LABELS = {
    :production => "jungle-socks.herokuapp.com",
    :staging => "staging",
}

def get_browser
  (ENV['BROWSER'] || :firefox).to_sym
end

def get_environment
  # ENV['SERVER'] will read system variable from your machine
  env = (ENV['SERVER'] || :production).to_sym
  #get key value from SERVER_LABELS hash
  SERVER_LABELS[env]
end


def create_browser
  @browser = Selenium::WebDriver.for get_browser
end

def jsocks
  @jsocks ||= Jsocks.new @browser
end
