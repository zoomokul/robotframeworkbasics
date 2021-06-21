*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome


*** Test Cases ***
Argument Usage
    ${page_title}=  launch browser
    log to console  ${page_title}




*** Keywords ***
launch browser
    open browser  ${url}  ${browser}
    maximize browser window
    ${title}=   get title
    # log to console  ${title} bu sadece ekrana yazdırır
    #Bu değeri kullanmak istersem return yaparım
    [Return]    ${title}








