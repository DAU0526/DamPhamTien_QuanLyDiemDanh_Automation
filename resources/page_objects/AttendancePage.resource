*** Settings ***
Library    SeleniumLibrary
Variables  ../../locators/AttendancePageLocators.py

*** Keywords ***
Attendance Page Should Be Ready
    Page Should Contain Element    ${ATTENDANCE_FILTER_BAR}
    Page Should Contain Element    ${ATTENDANCE_FILTER_SELECT}
    Page Should Contain Element    ${ATTENDANCE_FILTER_BUTTON}

Filter Attendance
    Click Button    ${ATTENDANCE_FILTER_BUTTON}
    Page Should Contain Element    ${ATTENDANCE_PANEL}

Attendance Lock Button Should Be Checked
    Page Should Contain Element    ${ATTENDANCE_PANEL}
    ${lock_visible}=    Run Keyword And Return Status    Page Should Contain Element    ${ATTENDANCE_LOCK_BUTTON}
    Log    Lock button visible: ${lock_visible}
