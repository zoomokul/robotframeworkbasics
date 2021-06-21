*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mouse Actions

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    dragDrop


*** Keywords ***
dragDrop
    drag and drop   //*[@id="draggable"]    //*[@id="droppable"]




