*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Handling ListBox
    open browser    ${url}  ${browser}
    maximize browser window


    #select from list by label
    #select from list by value
    #select from list by index
                                #id         #label
    select from list by label   selenium_commands  Browser Commands
    select from list by label   selenium_commands  Switch Commands

    sleep   3

    close browser
*** Keywords ***




