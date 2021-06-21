*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
SearchTest
    open browser    ${url}  ${browser}
    maximize browser window
                            #name   #value
    select radio button     sex     Female
    select radio button     exp     5
    sleep   5

    close browser
*** Keywords ***




