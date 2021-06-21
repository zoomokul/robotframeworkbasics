*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com.tr/
${browser}  chrome


*** Test Cases ***
Counting element
    open browser  ${url}  ${browser}
    maximize browser window
    ${allLinkCount}=    get element count   xpath://a
    log to console  ${allLinkCount}

    @{Linkitems}    create list
    FOR    ${i}    IN RANGE     1   ${allLinkCount}
    ${linkText}=    get text    xpath:(//a)[${i} ]
    log to console  ${linkText}

    END






*** Keywords ***










