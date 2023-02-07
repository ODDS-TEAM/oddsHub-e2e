*** Settings ***
Resource        ../keywords/ios/kw_oddshub_ios.robot



*** Test Cases ***

Oddshub app 
    Open oddshub ios application
    Wait until the screen shows the message "Course Name: Scrum"