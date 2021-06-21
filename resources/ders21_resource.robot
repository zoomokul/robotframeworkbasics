*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Keywords ***
launch browser
    open browser  ${url}  ${browser}
    maximize browser window
    ${title}=   get title
    # log to console  ${title} bu sadece ekrana yazdırır
    #Bu değeri kullanmak istersem return yaparım
    [Return]    ${title}
