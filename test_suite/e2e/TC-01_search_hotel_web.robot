*** Settings ***

Resource    ../../resources/hotel_web/core_browser_web.robot
Resource    ../../resources/keyword/key_login_web.robot
Resource    ../../resources/keyword/key_search_hotel_web.robot
Library     DataDriver      file=${${env}.test_date_path}
Test Template       Start Test

*** Keywords ***

Start Test

        [Arguments]    ${text_search_hotel}    ${value_search_hotel_username}
        Login Hotel With Valid Credential
        Click Login Button
        Validate Search Hotel Header    ${text_search_hotel}
        Validate Search Hotel Username    ${value_search_hotel_username}
        Click Logout Button
        Click Again Login Button

*** Test Cases ***

TC-01 Serach Hotel Validate Required Field  ${text_search_hotel}    ${value_search_hotel_username}

          [Tags]    TC-01     e2e