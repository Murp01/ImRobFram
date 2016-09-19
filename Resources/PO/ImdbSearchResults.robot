*** Settings ***
Library     Selenium2Library
Resource    ../Imdb.robot


*** Keywords ***
Select the movie link from the results page
     click link                         xpath=//a[contains(text(),'${SEARCH ITEM}')]/../../../tr [1]/td[2]/a