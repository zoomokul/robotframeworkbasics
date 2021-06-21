*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Handling DropDown
    open browser    ${url}  ${browser}
    maximize browser window


    #select from list by label
    #select from list by value
    #select from list by index
                                #id         #label
    select from list by label   continents  Antartica
    sleep   3
    select from list by index   continents  3
    sleep   3

    close browser
*** Keywords ***




