*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    open browser    https://www.amazon.com/  chrome
    input text  id:twotabsearchtextbox  LG
    click element   id:nav-search-submit-button
    close browser
*** Keywords ***




