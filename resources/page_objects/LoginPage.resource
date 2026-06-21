*** Settings ***
Library     SeleniumLibrary
Variables   ../../locators/LoginPageLocators.py
Resource    ../common_keywords.resource

*** Keywords ***
Open Login Page
    Open Browser To Base Url
    Login Page Should Be Visible

Login With Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_INPUT}
    Clear Element Text    ${USERNAME_INPUT}
    Input Text    ${USERNAME_INPUT}    ${username}
    Clear Element Text    ${PASSWORD_INPUT}
    Input Password    ${PASSWORD_INPUT}    ${password}
    Click Button    ${LOGIN_BUTTON}

Login Page Should Be Visible
    Wait Until Page Contains Element    ${USERNAME_INPUT}
    Wait Until Page Contains Element    ${PASSWORD_INPUT}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}

Clear Login Fields
    Wait Until Element Is Visible    ${USERNAME_INPUT}
    Clear Element Text    ${USERNAME_INPUT}
    Clear Element Text    ${PASSWORD_INPUT}

Click Login Button
    Click Button    ${LOGIN_BUTTON}
