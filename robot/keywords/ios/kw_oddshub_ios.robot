*** Settings ***
Library  AppiumLibrary
Library  OCRLibrary
Library  Collections



*** Variables ***
${APP}      oddshub.flutter_tests
${IOS_AUTOMATION_NAME}    XCUITest
${IOS_PLATFORM_NAME}          iOS


*** Keywords ***

Open oddshub ios application
    Open Application  http://127.0.0.1:4723/wd/hub  automationName=${IOS_AUTOMATION_NAME}
      ...  platformName=${IOS_PLATFORM_NAME}
      ...  deviceName=iPhone 14 Pro
      ...  platformVersion=16.2
      ...  app=/Users/iaob/Library/Developer/Xcode/DerivedData/Runner-ezopeuiztxanspfyvuytapinvczy/Build/Products/Debug-iphonesimulator/Runner.app

Wait until the screen shows the message ${check_lable}
    Wait Until Page Contains Element   chain=**/XCUIElementTypeStaticText[`label == ${check_lable}`]