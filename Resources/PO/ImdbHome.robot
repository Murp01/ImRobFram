*** Settings ***
Library     Selenium2Library
Resource    ../Imdb.robot

*** Variables ***



*** Keywords ***
Search for movie using the searchbox
    [Arguments]  ${SEARCH ITEM}
    wait until page contains                watchlist
    input text                              xpath=//input[@id='navbar-query']     ${SEARCH ITEM}    #place into a variable
    click button                            xpath=//button[@id='navbar-submit-button']
    wait until page contains element        xpath=//a[contains(text(),'${SEARCH ITEM}')]/../../..[1]