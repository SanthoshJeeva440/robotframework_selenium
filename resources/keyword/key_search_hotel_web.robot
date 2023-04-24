*** Settings ***

Library     SeleniumLibrary     run_on_failure=AppiumLibrary.Capture Page Screenshot
Resource    ../../page_object/po_web_page.robot

*** Keywords ***

Validate Search Hotel Header

        [Arguments]     ${text_search_hotel}
        SeleniumLibrary.Wait Until Element Is Visible    ${search_hotel_text}   30s
        SeleniumLibrary.Element Should Contain    ${search_hotel_text}    ${text_search_hotel}

Validate Search Hotel Username

        [Arguments]     ${value_search_hotel_username}
        SeleniumLibrary.Wait Until Element Is Visible    ${serach_hotel_username}
        SeleniumLibrary.Element Attribute Value Should Be    ${serach_hotel_username}    value    ${value_search_hotel_username}