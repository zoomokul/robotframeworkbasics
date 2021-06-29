*** Settings ***

Library  SeleniumLibrary
Library    RequestsLibrary
Library  Collections
Library  os
Library  JSONLibrary




*** Variables ***
#This is our base url for api testing
${baseUrl}  https://reqres.in/

${path}     /api/users?page=2


*** Test Cases ***
Get Request 1
   ${response}=     GET  https://reqres.in/api/users    params=query=page=2     expected_status=200
   log to console   ${response.content}
   Should Be Equal As Strings   ${response.reason}  OK
   log to console   1**************************************************


   log to console   ${response.json()}
   log to console   2**************************************************
   log to console   ${response.json()}[total_pages]
   log to console   3**************************************************
   log to console   ${response.json()}[data][3][avatar]

Get Request 2
    Create Session  jsonplaceholder  https://jsonplaceholder.typicode.com
     ${resp_json}=     GET On Session  jsonplaceholder  /posts/1
     log to console   **************************************************
     log to console  ${resp_json.json()}[title]

     #Dictionary Should Contain Value    ${resp_json.json()} sunt
     Dictionary Should Contain Key    ${resp_json.json()}      title
     Should Be Equal As Strings     sunt aut facere repellat provident occaecati excepturi optio reprehenderit  ${resp_json.json()}[title]

Get Request 3
#68322cf59c064606880e09b3dd03aff6

    Create Session  newsA  https://newsapi.org

    ${resp_json}=     get request  newsA     /v2/top-headlines?country=tr&apiKey=68322cf59c064606880e09b3dd03aff6

    log to console      ${resp_json.json()}[articles][19][title]


    FOR    ${i}    IN RANGE    0   20
            log to console      ${resp_json.json()}[articles][${i}][title]
    END












