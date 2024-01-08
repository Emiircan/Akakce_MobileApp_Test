*** Settings ***
Resource    ../Resources/common.robot

Test Setup    Open Akakce Application
Test Teardown    Close Application

*** Test Cases ***
Search For Bilgisayar
  [Tags]    search
  Close Pop Up Message
  Type Bilgisayar In The Search Box And Click Enter
  Select First Product
  Go To Selected Product
  Scroll To Follow Button
  Click On Follow Button
  Verify Login Page Displayed
