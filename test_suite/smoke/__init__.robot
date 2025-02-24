*** Comments ***
Test Setup    Launch Browser -> this keyword is open brwser defualt browser

Test Teardown    Close Web Browser -> this keyword is close all browser


*** Settings ***
Documentation       This file is used for launch & close browser Test and suite level
...                 Configuration

Resource            ../../resources/hotel_web/core_browser_web.resource

Test Setup          Launch Browser
Test Teardown       Close Web Browser
Library             pabot.PabotLib