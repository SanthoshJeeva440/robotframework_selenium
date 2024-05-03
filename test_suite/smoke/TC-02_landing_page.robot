*** Settings ***

Library     SeleniumLibrary     run_on_failure=AppiumLibrary.Capture Page Screenshot
Resource    ../../resources/hotel_web/core_browser_web.robot
Resource    ../../resources/keyword/key_login_web.robot
Resource    ../../resources/keyword/key_search_hotel_web.robot
Library     DataDriver      file=${${env}.test_date_path}
Test Template       Start Test

*** Keywords ***

Start Test

        Launch Browser
        Login Hotel With Valid Credential
        Click Login Button

*** Test Cases ***

TC-02 Validate Successful Login
       SeleniumLibrary.Element Text Should Be   css=.welcome_menu       Welcome to Adactin Group of Hotels





