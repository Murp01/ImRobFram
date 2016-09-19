*** Settings ***
Library  Selenium2Library
Resource    ../Imdb.robot


*** Keywords ***

Confirm The Correct Movie Profile Page Is Open
    wait until page contains element     xpath=//a[contains(text(),'Discuss ${SEARCH ITEM}')]   #has to be capital letter?


Go To The Movies Discussion Board
    wait until page contains element     xpath=//a[contains(text(),'Discuss ${SEARCH ITEM}')]
    click element     xpath=//a[contains(text(),'Discuss ${SEARCH ITEM}')]
    sleep  20s

Confirm The Correct Movie Profile Via Title
    wait until page contains element  xpath=//div[@class='title_wrapper']/h1[contains(text(),${SEARCH ITEM})]
    #click element   xpath=//div[@class='title_wrapper']/h1[contains(text(),kickboxer)] - can't locate the name of the title in header
    #has to be capital letter in title?