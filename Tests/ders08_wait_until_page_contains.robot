*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/
${browser}  chrome

*** Test Cases ***
Handling Time

    open browser    ${url}  ${browser}
    # set selenium [timeout]  10
    #normalde 5 saniyedir. Yukardaki komut 10 yaptı

    # set selenium implicit wait    15
    # tüm elementler için 15 saniye verir
    #Normalde bu değer 10 dur
    wait until page contains    Register
    click element   class:ico-register
    maximize browser window

    select radio button     Gender  F
    input text  name:FirstName  john
    input text  name:LastName   Desh
    input text  name:Email  abc@gmail.com
    input text  name:Password   123456
    input text  name:ConfirmPassword    123456
    sleep   5
    close browser
*** Keywords ***




