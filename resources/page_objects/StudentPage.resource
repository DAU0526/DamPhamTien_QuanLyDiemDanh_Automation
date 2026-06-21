*** Settings ***
Library    SeleniumLibrary
Variables  ../../locators/StudentPageLocators.py

*** Keywords ***
Student Table Should Be Visible
    Page Should Contain Element    ${STUDENT_TABLE}

Import Form Should Be Visible
    Page Should Contain Element    ${IMPORT_FORM}
    Page Should Contain Element    ${IMPORT_FILE}
