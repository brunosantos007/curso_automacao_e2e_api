require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

# Registrando o driver
Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser:  :chrome)  # Vamos utilizar o navegador chrome
end

# Configurando o driver
Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
#   Capybara.page.driver.browser.manage.window.maximize  # Maximizando a tela
  config.default_max_wait_time = 10  # Tempo máximo que a automação vai esperar para a página carregar ou esperar um elemento
  config.app_host = 'https://648cf7d98620b8bae7ed81b7.mockapi.io' # URL base que vamos utilizar
  CUCUMBER_PUBLISH_ENABLED=true
end