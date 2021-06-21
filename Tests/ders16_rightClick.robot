*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Handling Navigation

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    open context menu   xpath://*[@id="HTML10"]/div[1]/button
    sleep   5

    capture page screenshot     C:/Users/gazi/Desktop/cypress reporter/robot/res5.png


*** Keywords ***




