require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'fileutils'
require "i18n"
require_relative 'helper.rb'
require 'imatcher'
require 'chunky_png'
require 'os'
require 'httparty'

ENVIRONMENT = ENV['ENVIRONMENT_TYPE']
USERNAME = ENV['username']
PASSWORD = ENV['password']
ENVIRONMENT = YAML.load_file('./features/support/config/environment.yaml')


Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
            "args" => [ "--window-size=1600,1300"]
        }
    )
    Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, browser: :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end