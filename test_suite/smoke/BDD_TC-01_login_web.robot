*** Settings ***
Resource    ../../resources/hotel_web/core_browser_web.resource
Resource    ../../resources/keyword/key_login_web.resource


*** Test Cases ***
TC-01 Lunch Browser & Login With Valid Credential    [Tags]    tc-01    smoke

    Given Login Hotel With Valid Credential
    When Click Login Button
    And Click Logout Button
    Then Click Again Login Button
