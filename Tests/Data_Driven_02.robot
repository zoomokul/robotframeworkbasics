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



*** Test Cases ***

Verify login with blank password and username   ${EMPTY}     ${EMPTY}    Epic sadface: Username is required
Verify login with wrong password and username   standard_user1  secret_sauce1   Epic sadface: Username and password do not match any user in this service
Verify login with wrong password    standard_user   secret_sauce1   Epic sadface: Username and password do not match any user in this service
Verify login with locked out user   locked_out_user     secret_sauce    Epic sadface: Sorry, this user has been locked out.
Verify login with wrong username    ali     secret_sauce    Epic sadface: Username and password do not match any user in this service


















