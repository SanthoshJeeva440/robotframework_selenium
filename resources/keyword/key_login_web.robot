*** Settings ***

Library     SeleniumLibrary     run_on_failure=AppiumLibrary.Capture Page Screenshot
Variables   ../configuration/environment.py
Resource    ../../page_object/po_web_page.robot

*** Keywords ***

Login Hotel With Valid Credential

        SeleniumLibrary.Wait Until Element Is Visible    ${username_input_field}      30s
        SeleniumLibrary.Input Text    ${username_input_field}   text=${${env}.username}
        SeleniumLibrary.Input Text    ${password_input_field}   text=${${env}.password}
        
Click Login Button

        SeleniumLibrary.Wait Until Element Is Visible    ${login_button}    30s
        SeleniumLibrary.Element Should Be Visible    ${login_button}
        SeleniumLibrary.Click Button    ${login_button}