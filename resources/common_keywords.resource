*** Settings ***
Library    SeleniumLibrary
Library    String
Variables  ../environment.variables.yml

*** Keywords ***
Open Browser To Base Url
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${SELENIUM_TIMEOUT}

Close Test Browser
    Close Browser
