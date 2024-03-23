*** Settings ***
Resource    ../../resources/hotel_web/core_browser_web.resource
Resource    ../../resources/keyword/key_login_web.resource
Resource    ../../resources/keyword/key_search_hotel_web.resource
Resource    ../../test_data/test_data.resource


*** Test Cases ***
TC-01 Serach Hotel Validate Required Field    [Tags]    tc-01    regression

    Login Hotel With Valid Credential
    Click Login Button
    Validate Search Hotel Header    ${text_search_hotel}
    Validate Search Hotel Username    ${value_search_hotel_username}
    Click Logout Button
    Click Again Login Button
