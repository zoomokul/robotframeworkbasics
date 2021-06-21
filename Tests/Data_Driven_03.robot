*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library     SeleniumLibrary
Library     SeleniumLibrary
Resource  ../resources/Data_Driven_01_resource.robot
Library  SeleniumLibrary
Library     SeleniumLibrary
Resource    ../resources/common.robot

Suite Setup     common.start_test
Suite Teardown  common.stop_test
Test Template  common.invalid login scenarios
Library  SeleniumLibrary
Resource    ../resources/common.robot
Library  DataDriver     ../Test_Data/datas.csv

Suite Setup     common.start_test
Suite Teardown  common.stop_test
Test Template  common.invalid login scenarios





*** Test Cases ***

Verify login    ${username}     ${password}     ${error_msg}

*** Keywords ***
invalid login scenarios
    [Arguments]     ${username}     ${password}     ${error_msg}
    input text  ${txtbox_username}  ${username}
    input text  ${txtbox_password}   ${password}
    click button    ${btn_login}
    sleep   3
    element should contain  ${btn_error}    ${error_msg}














