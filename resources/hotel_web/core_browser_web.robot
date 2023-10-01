*** Settings ***

Documentation       This file used for launch browser with URL
Library     SeleniumLibrary     run_on_failure=AppiumLibrary.Capture Page Screenshot
Variables       ../configuration/environment.py
Resource        ../../page_object/po_web_page.robot

*** Keywords ***

Launch Browser

        SeleniumLibrary.Open Browser    url=${${env}.url}     browser=${${env}.browser}
        SeleniumLibrary.Maximize Browser Window
         
Close Web Browser

        SeleniumLibrary.Close Browser

Close All Web Browser

        # this keyword is used for close browser and with clear all aches, cookies
        SeleniumLibrary.Close All Browsers