*** Settings ***

Resource       ../resources/hotel_web/core_browser_web.robot
Test Setup     Launch Browser
Test Teardown  Close Web Browser

Documentation       This file is used for launch & close browser Test and suite level
...                 Configuration

*** Comments ***

Test Setup    Launch Browser -> this keyword is open brwser defualt browser

Test Teardown  Close Web Browser -> this keyword is close all browser