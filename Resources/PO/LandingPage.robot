*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
#    Go To  ${START_URL}
     Go To  ${URL.${ENVIRONMENT}}

Verify Page Loaded
    Wait Until Page Contains  Welcome Back!