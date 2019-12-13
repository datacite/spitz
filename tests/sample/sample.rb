require 'rubygems'
require 'selenium-webdriver'
# require 'browserstack/local'

#stop the Local instance
# bs_local.stop

# #creates an instance of Local
# bs_local = BrowserStack::Local.new

# #replace <browserstack-accesskey> with your key. You can also set an environment variable - "BROWSERSTACK_ACCESS_KEY".
# bs_local_args = { "key" => "kBoF121yeasHAQQwU93c" }

# #starts the Local instance with the required arguments
# bs_local.start(bs_local_args)



# Input capabilities
caps = Selenium::WebDriver::Remote::Capabilities.new
caps['browser'] = 'Firefox'
caps['browser_version'] = '71.0'
caps['os'] = 'OS X'
caps['os_version'] = 'Catalina'
caps['resolution'] = '1024x768'
caps['name'] = 'Bstack-[Ruby] Sample Test'


driver = Selenium::WebDriver.for(:remote,
  :url => "http://kristiangarza1:kBoF121yeasHAQQwU93c@hub-cloud.browserstack.com/wd/hub",
  :desired_capabilities => caps)
driver.navigate.to "https://support.datacite.org/docs/displaying-usage-and-citations-in-your-repository"
el = driver.find_element(:xpath, '//data-metrics-badge')
driver.action.move_to(el).perform

# element.send_keys "BrowserStack"
# element.submit
driver.save_screenshot("sample.png")

# puts driver.title
driver.quit

# #check if BrowserStack local instance is running
# puts bs_local.isRunning

# #stop the Local instance
# bs_local.stop