require_relative '../../lib/driver/android_driver'
require_relative '../../lib/screens/home_screen'


Given(/^the user has opened the app and the app's Home screen is displayed$/) do
  #@logger = Logger.new STDOUT
  @android ||= AndroidDriver.new
  @HomeScreen ||= HomeScreen.new(@android.driver)
  expect(@HomeScreen.verified_screen).to be true, "Lauched Invalid Application."
  @logger.info ">> Lauched Home Screen "
end

And(/^I see button$/) do
  @wait.until @driver.find_element(:class, "vivino.web.app.beta:id/seehowitwork").displayed?
end


And(/^I can see "(.*?)"$/) do |value|
  expect(@hScreen.is_displayed? value).to be true, "Home Screen #{value} is not displayed"
end

Then(/^I click on Add to Button$/) do
  @hScreen.click_Button_Login
  @logger.info ">> Clicked Add to Button"
end

