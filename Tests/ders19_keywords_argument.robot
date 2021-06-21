*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome


*** Test Cases ***
Argument Usage
    launch browser  ${url}  ${browser}



*** Keywords ***
launch browser
    [Arguments]     ${url1}  ${browser1}
    open browser    ${url1}  ${browser1}
    maximize browser window







