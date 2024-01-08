*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/common.robot

*** Variables ***
${homepage_button}         id=homePage
${follow_page}             id=followPage
${prod_details}            id=otherImage
${unfollow_button}         id=deleteTxt
${unfollow_ok_button}      id=doneBtn
${control_text}            id=phraseText

*** Keywords ***
Click On Homepage Button
    Wait And Click On Element   ${homepage_button}

Click On Follow Page Button
    Wait And Click On Element    ${follow_page}

Click On Product Details Button
    Wait And Click On Element    ${prod_details}

Click On Unfollow Button
    Wait And Click On Element    ${unfollow_button}

Click On Unfollow Ok Button
    Wait And Click On Element    ${unfollow_ok_button}

Verify The Wishlist Is Cleared
    Wait Until Page Contains Element    ${control_text}
    Element Should Contain Text         ${control_text}   Takip listeniz şu anda boş!