*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome

*** Test Cases ***
SearchTest
    open browser    ${url}  ${browser}
    maximize browser window
    input text  id:twotabsearchtextbox  lg-k41
    click element   id:nav-search-submit-button
    close browser
*** Keywords ***




