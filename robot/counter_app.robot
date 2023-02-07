*** Settings ***
Resource        counter_app_keywords.robot



*** Test Cases ***

Counter app increment counter
    Open the counter app
    รอจนกว่าจะเจอข้อความ "Course Name: Scrum"