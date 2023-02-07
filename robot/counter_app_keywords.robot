*** Settings ***
Documentation       TODO
Library  AppiumLibrary
Library  OCRLibrary
Library  Collections
Library  custom_lib.py
# Library  AppiumFlutterLibrary

*** Variables ***
${APP}      oddshub.flutter_tests
${IMAGE_DIR}      ${CURDIR}/images
${ANDROID_AUTOMATION_NAME}    XCUITest
${IOS_PLATFORM_NAME}        iOS
${ANDROID_PLATFORM_NAME}      Android

*** Keywords ***

Open The counter app
    Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
      ...  platformName=${IOS_PLATFORM_NAME}
      ...  deviceName=iPhone 14 Pro
      ...  platformVersion=16.2
      ...  app=/Users/iaob/Library/Developer/Xcode/DerivedData/Runner-ezopeuiztxanspfyvuytapinvczy/Build/Products/Debug-iphonesimulator/Runner.app
      ...  enablePerformanceLogging=true
      ...  printPageSourceOnFindFailure=true
      #...   app=${CURDIR}/../../build/app/outputs/flutter-apk/app-debug.apk

รอจนกว่าจะเจอข้อความ ${check_lable}
    Wait Until Page Contains Element   chain=**/XCUIElementTypeStaticText[`label == ${check_lable}`]