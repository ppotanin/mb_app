require_relative '../../lib/driver/android_driver'

After do |s|
  AndroidDriver.instance.stop_app
end


