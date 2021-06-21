*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  SeleniumLibrary



*** Test Cases ***
Loops1
    FOR    ${i}    IN RANGE    1   10
            log to console  ${i}
    END

Loops2
    FOR    ${k}    IN   10 20 30 40 50
            log to console  ${k}
    END

Loops3
    FOR    ${k}    IN   10  20  30  40  50
            log to console  ${k}
    END

Loops4
    @{items}    create list     3   5   7   9
    FOR    ${k}    IN   @{items}
            log to console  ${k}
    END

Loops5
    @{items}    create list     3   5   7   9
    FOR    ${k}    IN   @{items}

            log to console  ${k}
            exit for loop if    ${k}==7
    END














