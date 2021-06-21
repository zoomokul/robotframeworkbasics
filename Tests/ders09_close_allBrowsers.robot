*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Handling Browsers

    open browser    https://www.amazon.com/     chrome
    maximize browser window

    open browser    https://www.google.com.tr/      chrome
    maximize browser window


    # close browser  en son açılanı kapatır
    close all browsers
*** Keywords ***




