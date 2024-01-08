*** Settings ***
Resource    ../Resources/leftnav_page.robot

Test Setup    Open Akakce Application
Test Teardown    Close Application

*** Test Cases ***

Go To Product Page From Leftnav
    [Tags]    lefnav
    Close Pop Up Message
    Click On Left Icon
    Go To Ski Page
    Verify Go To Ski Page