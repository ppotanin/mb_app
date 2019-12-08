require 'appium_lib'

class AndroidDriver
  attr_reader :driver
  @driver = nil

  def initialize
    desired_caps = {
        caps: {
            "platformName": "Android",
            "deviceName": "Pixel_3a_XL_API_28",
            "udid": "emulator-5554",
            "appWaitForLaunch": "true",
            "app": "lib/apk/test-app.apk",
            "appPackage": "vivino.web.app.beta",
            "appActivity": "com.sphinx_solution.activities.SplashActivity"
        },
        appium_lib: {
            server_url: 'http://127.0.0.1:4723/wd/hub'
        }
    }
    @driver = Appium::Driver.new(desired_caps, false)
    @driver.start_driver
    @wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  end

  # to stop driver
  def stop_app
    @driver.driver_quit
  end
end