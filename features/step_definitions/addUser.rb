require_relative '../../lib/driver/android_driver'
require_relative '../../lib/screens/add_contact_screen'
require 'logger'

Then(/^I Should navigate to Add User Screen$/) do
  @logger = Logger.new STDOUT
  @addUserScreen ||= TestTitle.new(@android.driver)
  expect(@addUserScreen.verified_screen).to be true, "Navigate to Invalid Screen."
  @logger.info ">> Lauched Add to Another Screen "
end
