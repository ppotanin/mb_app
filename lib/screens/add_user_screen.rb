require 'appium_lib'
require 'selenium-webdriver'

class TestTitle

  def initialize(driver)
    @appium_driver = driver
  end

  #to verify the lauch screen
  def verified_screen
    begin
      @appium_driver.find_element(:id, "title").displayed?
    rescue
      return false
    end
  end
end