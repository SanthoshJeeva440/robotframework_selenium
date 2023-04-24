*** Settings ***

Resource        ../../resources/hotel_web/core_browser_web.robot
Resource        ../../resources/keyword/key_login_web.robot

*** Test Cases ***

TC-01 Lunch Browser & Login With Valid Credential

        Launch Browser
        Login Hotel With Valid Credential
        Click Login Button
        Close All Web Browser