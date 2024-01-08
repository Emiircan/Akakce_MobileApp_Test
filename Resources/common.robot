*** Settings ***
Library    AppiumLibrary
Resource    account_page.robot
Resource    home_page.robot
Resource    search_page.robot
Resource    follow_page.robot
Resource    leftnav_page.robot

*** Variables ***
${pop_up_message}                           id=framePopupLyt
${user}                                     standard_user1  #default variable


*** Keywords ***
Open Akakce Application
  Open Application
  ...  remote_url=http://localhost:4723
  ...  platformName=Android
  ...  platformVersion=11.0
  ...  deviceName=emulator
  ...  appPackage=com.akakce.akakce
  ...  appActivity=com.akakce.akakce.ui.splash.SplashActivity
  ...  automationName=Uiautomator2

Close Pop Up Message
  Wait Until Page Contains Element      ${pop_up_message}  timeout=15
  Click Element                         ${pop_up_message}

Scroll To Element
  [Arguments]    ${element}
  ${isElementVisible}  Run Keyword And Return Status  Element Should Be Visible      ${element}
  WHILE    "${isElementVisible}" == "False"
       Swipe By Percent    50    80    50    30
       ${isElementVisible}  Run Keyword And Return Status  Element Should Be Visible  ${element}
  END

Wait And Click On Element
    [Arguments]    ${element}
    Wait Until Page Contains Element      ${element}
    Click Element                         ${element}