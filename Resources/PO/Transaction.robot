*** Variables ***
#${MY_VALUE} =  100
${you_send_field}=  //*[@id="requestRate-youSendFld_field"]
${you_receive_field}=  //*[@id="requestRate-recipientGetsFld_field"]

*** Keywords ***
Do Transactions
    Input details
    Submit
#    Click form
Input details
#    sleep  15s
# HOME PAGE
   Wait Until Page Contains Element  ${REQUEST_A_RATE_NARR}
   Click Element  ${REQUEST_A_RATE_NARR}

#  [Documentation]  Select Receipient
    Input Text  ${you_send_field}  10000000
    click element  xpath=//*[@id="mui-component-select-currency"]
    Execute JavaScript    window.scrollTo(1, document.body.scrollHeight)
#     Click Image id=select-search-icon
     Mouse Over  xpath=//*[@id="requestRate-youSendFld-menu-item-4"]
     Click element  xpath=//*[@id="requestRate-youSendFld-menu-item-4"]

     click element  xpath=//*[@id="mui-component-select-currency"]
     Execute JavaScript    window.scrollTo(1, document.body.scrollHeight)
     Mouse Over  xpath=//*[@id="requestRate-recipientGetsFld-menu-item-2"]
     Click element  xpath=//*[@id="requestRate-recipientGetsFld-menu-item-2"]
#     Input Text  xpath=//*[@id="country-dropdown"]/div[1]/div[1]/div[1] albania
Submit
     click button  xpath=//*[@id="requestRate-continueBtn"]/span[1]
     sleep  3s

#*** Test Cases ***
#Testing a true IF statement
#    Run Keyword If  ${MY_VALUE} > 50  Keyword 1
#
#Testing a false IF statement
#    Run Keyword If  ${MY_VALUE} > 200  Keyword 1
#
#Testing an IF/ELSE statement
#    Run Keyword If  ${MY_VALUE} > 200  Keyword 1
#    ...  ELSE  Keyword 2
#
#Testing an IF/ElSE IF/ELSE statement
#    Run Keyword If  ${MY_VALUE} > 200  Keyword 1
#    ...  ELSE IF  ${MY_VALUE} == 10  Keyword 2
#    ...  ELSE  Keyword 3
#
#
#*** Keywords ***
#Keyword 1
#    Log  In keyword 1
#
#Keyword 2
#    Log  In keyword 2
#
#Keyword 3
#    Log  In keyword 3