*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library     SeleniumLibrary
Library     SeleniumLibrary
Resource  ../resources/Data_Driven_01_resource.robot
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
Verify login with wrong username
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${txtbox_username}  ali
    input text  ${txtbox_password}   secret_sauce
    click button    ${btn_login}
    sleep   3
    element should contain  ${btn_error}    Epic sadface: Username and password do not match any user in this service
    close browser

Verify login with locked out user
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${txtbox_username}  locked_out_user
    input text  ${txtbox_password}   secret_sauce
    click button    ${btn_login}
    sleep   3
    element should contain  ${btn_error}    Epic sadface: Sorry, this user has been locked out.
    close browser

Verify login with wrong password
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${txtbox_username}  standard_user
    input text  ${txtbox_password}   secret_sauce1
    click button    ${btn_login}
    sleep   3
    element should contain  ${btn_error}    Epic sadface: Username and password do not match any user in this service
    close browser

Verify login with wrong password and username
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${txtbox_username}  standard_user1
    input text  ${txtbox_password}   secret_sauce1
    click button    ${btn_login}
    sleep   3
    element should contain  ${btn_error}    Epic sadface: Username and password do not match any user in this service
    close browser

Verify login with blank password and username
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${txtbox_username}  ${EMPTY}
    input text  ${txtbox_password}   ${EMPTY}
    click button    ${btn_login}
    sleep   3
    element should contain  ${btn_error}    Epic sadface: Username is required
    close browser

*** Keywords ***














