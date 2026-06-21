*** Settings ***
Library    SeleniumLibrary
Library    String
Variables  ../../locators/ClassPageLocators.py

*** Keywords ***
Create Class
    [Arguments]    ${class_code}    ${class_name}
    Wait Until Page Contains Element    ${CLASS_CODE_INPUT}
    Clear Element Text    ${CLASS_CODE_INPUT}
    Input Text    ${CLASS_CODE_INPUT}    ${class_code}
    Clear Element Text    ${CLASS_NAME_INPUT}
    Input Text    ${CLASS_NAME_INPUT}    ${class_name}
    Click Button    ${CLASS_SUBMIT}
    Wait Until Page Contains    ${class_code}

Class Should Exist
    [Arguments]    ${class_code}
    ${locator}=    Format String    ${CLASS_ITEM_TEMPLATE}    class_code=${class_code}
    Page Should Contain Element    ${locator}

Class Should Not Exist
    [Arguments]    ${class_code}
    ${locator}=    Format String    ${CLASS_ITEM_TEMPLATE}    class_code=${class_code}
    Page Should Not Contain Element    ${locator}

Click Class Action
    [Arguments]    ${class_code}    ${action_text}
    ${locator}=    Format String    ${CLASS_ACTION_TEMPLATE}    class_code=${class_code}    action_text=${action_text}
    Click Button    ${locator}

Delete Class If Exists
    [Arguments]    ${class_code}
    ${exists}=    Run Keyword And Return Status    Class Should Exist    ${class_code}
    IF    ${exists}
        Click Class Action    ${class_code}    Xóa
        ${locator}=    Format String    ${CLASS_ITEM_TEMPLATE}    class_code=${class_code}
        Wait Until Page Does Not Contain Element    ${locator}
    END

Edit Class Name
    [Arguments]    ${class_code}    ${new_name}
    Click Class Action    ${class_code}    Sửa
    Wait Until Page Contains Element    ${CLASS_NAME_INPUT}
    Clear Element Text    ${CLASS_NAME_INPUT}
    Input Text    ${CLASS_NAME_INPUT}    ${new_name}
    Click Button    ${CLASS_SUBMIT}
