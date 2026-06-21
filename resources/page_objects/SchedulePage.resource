*** Settings ***
Library    SeleniumLibrary
Variables  ../../locators/SchedulePageLocators.py

*** Keywords ***
Schedule Assignment Page Should Be Ready
    Page Should Contain Element    ${SCHEDULE_FORM}
    Page Should Contain Element    ${SCHEDULE_SELECT}
    Page Should Contain Element    ${SCHEDULE_TIME_INPUT}
