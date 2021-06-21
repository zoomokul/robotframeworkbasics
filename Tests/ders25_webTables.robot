*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome
# //table[@class='navFooterMoreOnAmazon']//tbody//tr[3]//td[11]

*** Test Cases ***
Web Tables
    open browser  ${url}  ${browser}
    maximize browser window
    execute javascript  window.scrollTo(0,document.body.scrollHeight)

    ${rowCount}=    get element count   xpath://table[@class='navFooterMoreOnAmazon']//tbody//tr
    ${colCount}=    get element count   xpath://table[@class='navFooterMoreOnAmazon']//tbody//tr[1]//td

     ${specificData}=    get text   xpath://table[@class='navFooterMoreOnAmazon']//tbody//tr[1]//td[3]

    log to console  ${rowCount}
    log to console  ${colCount}
    log to console  ${specificData}

    table column should contain     xpath://table[@class='navFooterMoreOnAmazon']   3   attract
    table row should contain     xpath://table[@class='navFooterMoreOnAmazon']   1   6pm
    table cell should contain     xpath://table[@class='navFooterMoreOnAmazon']     1       1       Stream





*** Keywords ***










