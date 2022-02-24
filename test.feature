@debug
Feature: Use Chatbot
Background:
  * configure driver = {type: "chrome", executable: "/usr/bin/google-chrome"}
  Given driver "https://www.google.com/"
  * maximize()

Scenario: Check chat button present after page load
    * waitForAny([".gLFyf"])
    * assert optional(".gLFyf").present
