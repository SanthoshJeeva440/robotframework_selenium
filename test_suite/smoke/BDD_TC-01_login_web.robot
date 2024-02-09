*** Settings ***

Resource        ../../resources/hotel_web/core_browser_web.robot
Resource        ../../resources/keyword/key_login_web.robot

*** Test Cases ***

TC-01 Lunch Browser & Login With Valid Credential

        [Tags]    TC-01     smoke
        Given Login Hotel With Valid Credential
        When Click Login Button
        And Click Logout Button
        Then Click Again Login Button