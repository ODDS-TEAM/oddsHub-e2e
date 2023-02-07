*** Settings ***
Library  AppiumLibrary
Library  OCRLibrary
Library  Collections



*** Variables ***
${APP}      oddshub.flutter_tests
${ANDROID_AUTOMATION_NAME}    UiAutomator2
${ANDROID_PLATFORM_NAME}      Android

*** Keywords ***

Open oddshub android application
    Open Application  http://127.0.0.1:4723/wd/hub  
      ...  automationName=${ANDROID_AUTOMATION_NAME}
      ...  platformName=${ANDROID_PLATFORM_NAME}
      ...  deviceName=Pixel 3
      ...  app=/Users/iaob/Desktop/workShopODDS/odds-hub/oddsHub-e2e/robot/app/app-release.apk

Wait until the screen shows the message ${check_lable}
    Wait Until Page Contains Element  xpath=//android.view.View[@content-desc=${check_lable}]