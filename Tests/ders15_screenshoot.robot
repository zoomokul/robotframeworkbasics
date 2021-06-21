*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Handling Navigation

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window

    capture element screenshot  xpath://div[@class='titlewrapper']  C:/Users/gazi/Desktop/cypress reporter/robot/res3.png
    capture page screenshot     C:/Users/gazi/Desktop/cypress reporter/robot/res2.png


*** Keywords ***




