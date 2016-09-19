*** Settings ***
Documentation   Searches the website for a specific movie
Resource        ../Resources/Common.robot       #tutorial didn't tell me that I had to go back out a folder to direct here (../)
Resource        ../Resources/PO/ImdbHome.robot
Resource        ../Resources/PO/ImdbSearchResults.robot
Resource        ../Resources/PO/ImdbMovieProfile.robot
#Test Setup      Common.Begin Web Test   http://www.google.com  ff        #pre-fix not mandatory although it can prevent mix up with duplicate keyword in different page object
Test Teardown   Common.End Web Test


*** Variables ***

*** Test Cases ***
Search For Movie
    Common.Begin Web Test   about:blank  ff
    Common.Open The System Under Test   http://www.imdb.com
    ImdbHome.Search for movie using the searchbox   Doctor Strange
    ImdbSearchResults.Select the movie link from the results page
    ImdbMovieProfile.Confirm The Correct Movie Profile Via Title

View A Movies Discussion Board
    Common.Begin Web Test   about:blank  ff
    Common.Open The System Under Test   http://www.imdb.com
    ImdbHome.Search for movie using the searchbox   Doctor Strange
    ImdbSearchResults.Select the movie link from the results page
    ImdbMovieProfile.Go To The Movies Discussion Board








