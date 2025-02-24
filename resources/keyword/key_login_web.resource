*** Settings ***
Library         SeleniumLibrary    run_on_failure=SeleniumLibrary.Capture Page Screenshot
Variables       ../configuration/environment.py
Resource        ../../page_object/po_web_page.resource


*** Keywords ***
Login Hotel With Valid Credential
    [Arguments]     ${USERNAME}     ${PASSWORD}
    SeleniumLibrary.Wait Until Element Is Visible    ${username_input_field}    30s
    SeleniumLibrary.Input Text    ${username_input_field}    ${USERNAME}
    SeleniumLibrary.Input Text    ${password_input_field}    ${PASSWORD}
#    SeleniumLibrary.Input Text    ${username_input_field}    text=${${env}.username}
#    SeleniumLibrary.Input Text    ${password_input_field}    text=${${env}.password}

Click Login Button
    SeleniumLibrary.Wait Until Element Is Visible    ${login_button}    30s
    SeleniumLibrary.Element Should Be Visible    ${login_button}
    SeleniumLibrary.Click Button    ${login_button}

Click Logout Button
    SeleniumLibrary.Wait Until Element Is Visible    ${logout_button}    30s
    SeleniumLibrary.Click Element    ${logout_button}

Click Again Login Button
    SeleniumLibrary.Wait Until Element Is Visible    ${again_login_button}    30s
    SeleniumLibrary.Click Element    ${again_login_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${username_input_field}    30s
