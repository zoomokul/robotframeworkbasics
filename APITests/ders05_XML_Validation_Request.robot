*** Settings ***
Library  SeleniumLibrary
Library    RequestsLibrary
Library  Collections

Library  JSONLibrary
Library  os
Library  Collecions
Library  XML
Library  os
Library  Collecions





*** Test Cases ***
JSON Test
    ${xml_obj}=   parse xml     resources/ex.xml
    ${value}=       get element text    ${xml_obj}  .//CATALOG/CD/TITLE
    log to console  ${value}




