*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Resource  ../resources/ders21_resource.robot

*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome


*** Test Cases ***
Argument Usage
    ${page_title}=  launch browser
    log to console  ${page_title}













