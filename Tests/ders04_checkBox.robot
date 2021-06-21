*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
SearchTest
    open browser    ${url}  ${browser}
    maximize browser window
                            #name
    select checkbox     BlackTea
     select checkbox     RedTea

     sleep  3
     unselect checkbox  BlackTea

    sleep   5

    close browser
*** Keywords ***




