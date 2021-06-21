*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome
${txtbox_username}  xpath://*[@id="user-name"]
${txtbox_password}  xpath://*[@id="password"]
${btn_login}  xpath://*[@id="login-button"]
${btn_error}  xpath://*[@id="login_button_container"]/div/form/div[3]/h3


*** Keywords ***
start_test
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2

stop_test
    close browser


invalid login scenarios
    [Arguments]     ${username}     ${password}     ${error_msg}
    input text  ${txtbox_username}  ${username}
    input text  ${txtbox_password}   ${password}
    click button    ${btn_login}
    sleep   3
    element should contain  ${btn_error}    ${error_msg}
