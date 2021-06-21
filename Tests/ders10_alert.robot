*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Handling Alert

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window

    click element   xpath://button[text()='Click Me']
    # handle alert    accept
    #handle alert    dismiss
    #handle alert    leave
    alert should be present     Press a button!




    #close browser

*** Keywords ***




