require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

@browser = ENV['BROWSER']

Capybara.configure do |config|
    config.default_driver = if @browser.eql?('firefox')
                               :selenium
                            elsif @browser.eql?('chrome')
                               :selenium_chrome
                            elsif @browser.eql?('chrome_headless')
                               :selenium_chrome_headless
                            else 
                               raise 'Nenhum navegador foi selecionado'
                            end    
end