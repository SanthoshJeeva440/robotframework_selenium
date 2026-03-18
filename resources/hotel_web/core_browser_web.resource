*** Settings ***
Documentation       This file used for launch browser with URL

Library             SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot
Variables           ../configuration/environment.py
Resource            ../../page_object/po_web_page.resource


*** Variables ***
${mode}     --head


*** Keywords ***
Launch Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].${browser}.options.Options()    sys

    Call Method    ${options}    add_argument    ${mode}
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --ignore-certificate-errors

    SeleniumLibrary.Open Browser
    ...    url=${${env}.url}
    ...    browser=${browser}
    ...    options=${options}
    SeleniumLibrary.Maximize Browser Window

Close Web Browser
    SeleniumLibrary.Close Browser

Close All Web Browser
    # this keyword is used for close browser and with clear all aches, cookies
    SeleniumLibrary.Close All Browsers
