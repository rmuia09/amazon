*** Settings ***
Documentation  Login Tests Unhappy Path
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
BadLogin
    Enter bad credentials
    Submit

Enter bad credentials
    Input Text  ${EMAIL_FIELD}  ${EMAIL_ADDRESS}
    Input Password  ${PWD_FIELD}    ${PWD_KO}

Submit
    Click Button  xpath=//*[@id="login-submitBtn"]
    sleep  3s

    Wait Until Page Contains  Sorry, that email or password did not work. Please try again
    sleep  3s

# Wait Until Page Contains Element  xpath=//*[@id="login-loginForm"]/div[2]/div ***

#Click Element  xpath=//*[@id="login-loginForm"]/div[2]/div ***