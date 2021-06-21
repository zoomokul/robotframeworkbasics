*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Handling Time
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium speed  3 seconds

    ${speed2}=  get selenium speed
    log to console  ${speed2}

    select radio button     Gender  F
    input text  name:FirstName  john
    input text  name:LastName   Desh
    input text  name:Email  abc@gmail.com
    input text  name:Password   123456
    input text  name:ConfirmPassword    123456
    sleep   5
    close browser
*** Keywords ***




