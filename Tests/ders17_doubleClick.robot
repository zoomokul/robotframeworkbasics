*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mouse Actions

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    double click element   xpath://*[@id="HTML10"]/div[1]/button
    sleep   5

    capture page screenshot     C:/Users/gazi/Desktop/cypress reporter/robot/res6.png


*** Keywords ***




