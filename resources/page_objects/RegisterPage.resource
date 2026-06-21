*** Settings ***
Library     SeleniumLibrary
Variables   ../../locators/RegisterPageLocators.py
Resource    ../common_keywords.resource

*** Keywords ***
Open Register Form
    Click Element    ${REGISTER_TOGGLE}
    Wait Until Page Contains Element    ${REGISTER_PASSWORD}

Fill Register Form
    [Arguments]    ${username}    ${full_name}    ${password}
    Clear Element Text    ${REGISTER_FULLNAME}
    Input Text    ${REGISTER_FULLNAME}    ${full_name}
    Clear Element Text    ${REGISTER_USERNAME}
    Input Text    ${REGISTER_USERNAME}    ${username}
    Clear Element Text    ${REGISTER_PASSWORD}
    Input Password    ${REGISTER_PASSWORD}    ${password}

Select Teacher Role For Register
    Click Element    ${REGISTER_TEACHER}

Select Student Role For Register
    Click Element    ${REGISTER_STUDENT}

Submit Register Form
    Click Button    ${REGISTER_SUBMIT}
