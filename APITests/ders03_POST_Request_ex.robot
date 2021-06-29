*** Settings ***

Library  SeleniumLibrary
Library    RequestsLibrary
Library  Collections
Library  os
Library  JSONLibrary




*** Variables ***



*** Test Cases ***


Post Request 2
    Create Session  jsonplaceholder  https://jsonplaceholder.typicode.com
     ${resp_json}=     GET On Session  jsonplaceholder  /posts/1
     # log to console   **************************************************

     &{data}=    Create dictionary  title=Robotframework requests  body=This is a test!  userId=1
     ${resp}=    POST On Session    jsonplaceholder  /posts  json=${data}  expected_status=anything
     log to console     ${resp.status_code}
     log to console     ${resp.content}
     log to console     ${resp.json()}[body]

     Status Should Be                 201  ${resp}












