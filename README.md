# Android Test Automation with Rubuy and Appium

In this project you will find how to automate Android test with Ruby and Cucumber

## Install dependecies

Clone the framework

Navigate to the framework directory

    $ cd bdd-appium-android

Install bundler and the gems the framework is dependent on

    $ gem install bundler
    $ bundle install
    
## Prerequisite Set Up

Please make sure you have done following things before execute the test:

        - Start Appium server
        - Updadte Android Capabilities according to your emulator (andriod_driver.rb)
        - Start the Android Emulator

## Running tests

To execute the contactManager.feature


    $ cucumber -r features/contactManager.feature --color -r features

## Open test report

 Go and open Cucumber_report.html

