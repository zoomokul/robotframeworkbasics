*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Handling Navigation

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${loc1}=     get location
    log to console  ${loc1}


    go to    https://www.selenium.dev/
     ${loc2}=     get location
    log to console  ${loc2}

    go back
    ${loc3}=     get location
    log to console  ${loc3}









    close all browsers

*** Keywords ***




