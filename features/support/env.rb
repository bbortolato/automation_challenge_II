require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'httparty'

ENV['ENV'] = 'prod' unless ENV.key?('ENV' || 'env')
BROWSER = 'chrome' unless ENV.key?('BROWSER' || 'browser')
USERNAME = ENV['username']
PASSWORD = ENV['password']
ENVIRONMENT = YAML.load_file('./features/support/environments.yaml')[ENV['ENV']]

Capybara.default_max_wait_time = 10


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

  ## configure the chosen browser
  Capybara.configure do |config|
    config.default_driver = :selenium
  end