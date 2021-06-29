*** Settings ***
Library  SeleniumLibrary
Library    RequestsLibrary
Library  Collections

Library  JSONLibrary
Library  os
Library  Collecions





*** Test Cases ***
JSON Test
    ${json_obj}=    load json from file     resources/ex.json
    ${value}=       get value from json     ${json_obj}     $.glossary.GlossDiv.GlossList.GlossEntry.GlossDef.GlossSeeAlso[1]
    should be equal   ${value[0]}   XML


