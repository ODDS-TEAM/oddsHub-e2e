*** Settings ***
Resource        ../keywords/android/kw_oddshub_android.robot


*** Test Cases ***

Oddshub app 
    Open oddshub android application
    Wait until the screen shows the message "Course Name: Scrum"