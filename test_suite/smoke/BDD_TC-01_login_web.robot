*** Settings ***
Resource    ../../resources/hotel_web/core_browser_web.resource
Resource    ../../resources/keyword/key_login_web.resource


*** Test Cases ***
TC-01 Lunch Browser & Login With Valid Credential    [Tags]    tc-01    smoke

        Login Hotel With Valid Credential    USERNAME=${USERNAME}    PASSWORD=${PASSWORD}
        Click Login Button
        Click Logout Button
        Click Again Login Button
