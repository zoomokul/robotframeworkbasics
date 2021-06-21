*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome


*** Test Cases ***
Scrolling
    launch browser
    # till reach pixel
    # till find element on page
    #till the botton





*** Keywords ***
launch browser
    open browser  ${url}  ${browser}
    maximize browser window
    # execute javascript  window.scrollTo(0,1500)
    #scroll element into view    xpath://span[text()='Best Sellers in Baby']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)

    #starting the page
    # execute javascript  window.scrollTo(0,-document.body.scrollHeight)









