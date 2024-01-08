*** Settings ***
Library  AppiumLibrary
Resource    common.robot

*** Variables ***
${search_input_field}                       id=searchText
${search_input_field2}                      xpath=(//*[@resource-id='com.akakce.akakce:id/searchTextView'])[2]
${first_product}                            xpath=(//*[@resource-id='com.akakce.akakce:id/cellContainer'])[1]
${goto_product_button}                      id=detailBtnTextView
${follow_button}                            xpath=//*[@text='Takip Et']

*** Keywords ***
Type Bilgisayar In The Search Box And Click Enter
  Wait Until Page Contains Element      ${search_input_field}
  Click Element                         ${search_input_field}
  Wait Until Page Contains Element      ${search_input_field2}
  Input Text                            ${search_input_field2}  Bilgisayar
  Press Keycode    66   # KEYCODE=Enter

Select First Product
  Wait Until Page Contains Element      ${first_product}
  Click Element                         ${first_product}

Go To Selected Product
  Scroll To Element                     ${goto_product_button}
  Wait Until Page Contains Element      ${goto_product_button}
  Click Element                         ${goto_product_button}

Scroll To Follow Button
  Scroll To Element    ${follow_button}

Click On Follow Button
  Click Element    ${follow_button}
