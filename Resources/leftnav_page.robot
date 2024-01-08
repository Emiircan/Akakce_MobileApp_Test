*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/common.robot

*** Variables ***
${left_icon}            id=leftIcon
${spor_outdoor}         xpath=//*[@text='Spor, Outdoor']
${outdoor}              xpath=//*[@text='Outdoor']
${ski_materials}        xpath=//*[@text='Kayak Malzemeleri']
${ski}                  xpath=//*[@text='Kayak']
${control_text}         id=campaignTitle

*** Keywords ***
Click On Left Icon
    Wait And Click On Element    ${left_icon}

Go To Ski Page
    Wait And Click On Element    ${spor_outdoor}
    Wait And Click On Element    ${outdoor}
    Wait And Click On Element    ${ski_materials}
    Wait And Click On Element    ${ski}

Verify Go To Ski Page
    Wait Until Page Contains Element    ${control_text}
    Element Should Contain Text         ${control_text}  Kayak