*** Settings ***
Library     Selenium2Library
Resource    Imdb.robot

*** Variables ***


*** Keywords ***

Begin Web Test
    [Arguments]     ${URL}  ${BROWSER}
    Open Browser    ${URL}  ${BROWSER}


End Web Test
    close browser

Open The System Under Test
    [Arguments]     ${SUT}  #systemundertest
    go to  ${SUT}
