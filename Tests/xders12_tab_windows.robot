*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Handling windows

    open browser    http://demo.automationtesting.in/Windows.html     chrome
    maximize browser window

    click element   xpath:(//button[@class='btn btn-info'])[1]
    select window  title=SeleniumHQ Browser Automation

    click element   xpath:(//a[text()='Blog'])[1]






    #close browser

*** Keywords ***




