*** Settings ***
Library     SeleniumLibrary
Library     String
Variables   ../../locators/DashboardPageLocators.py
Resource    ../common_keywords.resource

*** Keywords ***
Dashboard Should Be Visible
    Wait Until Page Contains Element    ${DASHBOARD}
    Wait Until Page Contains Element    ${LOGOUT_BUTTON}

Dashboard Should Not Be Visible
    Page Should Not Contain Element    ${DASHBOARD}

Logout From System
    Click Button    ${LOGOUT_BUTTON}

Sidebar Menu Count Should Be
    [Arguments]    ${expected_count}
    Wait Until Page Contains Element    ${SIDEBAR_NAV_BUTTONS}
    ${actual_count}=    Get Element Count    ${SIDEBAR_NAV_BUTTONS}
    Should Be Equal As Integers    ${actual_count}    ${expected_count}

Sidebar Menu Should Contain
    [Arguments]    ${menu_text}
    ${locator}=    Format String    ${SIDEBAR_MENU_TEMPLATE}    menu_text=${menu_text}
    Page Should Contain Element    ${locator}

Sidebar Menu Should Not Contain
    [Arguments]    ${menu_text}
    ${locator}=    Format String    ${SIDEBAR_MENU_TEMPLATE}    menu_text=${menu_text}
    Page Should Not Contain Element    ${locator}

Click Sidebar Menu
    [Arguments]    ${menu_text}
    ${locator}=    Format String    ${SIDEBAR_MENU_TEMPLATE}    menu_text=${menu_text}
    Click Element    ${locator}

Panel Should Contain Heading
    [Arguments]    ${heading_text}
    ${locator}=    Format String    ${PANEL_HEADING_TEMPLATE}    heading_text=${heading_text}
    Page Should Contain Element    ${locator}

Table Should Be Visible
    Page Should Contain Element    ${TABLE_LOCATOR}

Button With Text Should Be Visible
    [Arguments]    ${button_text}
    ${locator}=    Format String    ${BUTTON_WITH_TEXT_TEMPLATE}    button_text=${button_text}
    Page Should Contain Element    ${locator}
