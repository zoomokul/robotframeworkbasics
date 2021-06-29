*** Settings ***
# we add necessary libray
Library  SeleniumLibrary
Library    RequestsLibrary
Library  Collections

*** Variables ***
#This is our base url for api testing
${baseUrl}  https://jsonplaceholder.typicode.com
# and this is end point too
${endPoint}     /todos/1


*** Test Cases ***
# name of test case
Get Request
    #creating a session
   create session  mysesion    ${baseUrl}
   # store request to ${response}
   ${response}=    get request    mysesion      ${endPoint}

    # log to console content,statuscode,headers of response
   log to console      ${response.content}
   log to console      ${response.status_code}
   log to console      ${response.headers}

    # statuscode of response convert to string and store a variable
    ${code}=    convert to string   ${response.status_code}
    # validation of status code equal 200
    should be equal     ${code}     200

     # content of response convert to string and store a variable
    ${body}=    convert to string   ${response.content}
    # validation of status content contain id word
    should contain  ${body}     id


    # grab response.headers values using get from dictionary
    ${contentTypeValue}=  get from dictionary  ${response.headers}     Content-Type

    #log to console value of Content-Type
    log to console  ${contentTypeValue}
    # validation of Content-Type value equal application/json; charset=utf-8
    should be equal     ${contentTypeValue}     application/json; charset=utf-8







