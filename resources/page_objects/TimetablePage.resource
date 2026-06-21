*** Settings ***
Library    SeleniumLibrary
Variables  ../../locators/TimetablePageLocators.py

*** Keywords ***
Timetable Week Grid Should Be Visible
    Page Should Contain Element    ${TIMETABLE_WEEK_GRID}
