*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Handling Alert

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window


    open browser    https://www.selenium.dev/     chrome
    maximize browser window

    switch browser  1
    ${title1}=  get title
    log to console  ${title1}

    switch browser  2
    ${title2}=  get title
    log to console  ${title2}






    close all browsers

*** Keywords ***




