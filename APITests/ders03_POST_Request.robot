*** Settings ***
#import which library you need
Library  SeleniumLibrary
Library    RequestsLibrary
Library  Collections

# set of your variables
*** Variables ***
${baseUrl}  https://jsonplaceholder.typicode.com
${endPoint}     /posts


*** Test Cases ***
# name of test case
Post Request

    # create session
   create session  mysesion    ${baseUrl}


    # create dictionary
   ${body}=     create dictionary     title=foo  body=bar    userId= 1
   ${header}=   create dictionary    Content-Type=application/json

    # make a post request
   ${response}=    post request    mysesion      ${endPoint}    data=${body}    headers=${header}

    #convert to string of statuscode
   ${code}=  convert to string  ${response.status_code}
   # validation of status code should be equal 201
   should be equal  ${code}     201

    #convert to string of response.content
   ${body}=  convert to string  ${response.content}

    # validation of response.content should contain bar word
    should contain  ${body}  bar

   # get the Content-Type of headers using get from dictionary method
   ${contentTypeValue}=  get from dictionary  ${response.headers}     Content-Type

    log to console  ${contentTypeValue}






