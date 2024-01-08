*** Settings ***
Resource    ../Resources/common.robot

Test Setup    Open Akakce Application     
Test Teardown    Close Application

*** Test Cases ***

Follow The Product And Unfollow Product
  [Tags]    follow
  Close Pop Up Message
  Click On User Icon
  Verify Login Page Displayed
  Enter Standard User Login Credentials
  Click On Login Button
  Click On Homepage Button
  Type Bilgisayar In The Search Box And Click Enter
  Select First Product
  Go To Selected Product
  Scroll To Follow Button
  Click On Follow Button
  Click On Follow Page Button
  Click On Product Details Button
  Click On Unfollow Button
  Click On Unfollow Ok Button
  Click On Homepage Button
  Click On Follow Page Button
  Verify The Wishlist Is Cleared
