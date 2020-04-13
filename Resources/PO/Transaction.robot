*** Variables ***
#${MY_VALUE} =  100
${you_send_field}=  //*[@id="requestRate-youSendFld_field"]
#${you_receive_field}=  //*[@id="requestRate-recipientGetsFld_field"]

*** Keywords ***
Do Transactions
    Txn details
    Submit for verification
#    Click form
Txn details
#    sleep  15s
# HOME PAGE
   Wait Until Page Contains Element  ${REQUEST_A_RATE_NARR}
   Click Element  ${REQUEST_A_RATE_NARR}

#  [Documentation]  Select Receipient
    click element  xpath=//*[@id="requestRate-youSendFld_container"]/div[2]

#    Execute JavaScript    window.scrollTo(1, document.body.scrollHeight)

     Mouse Over  xpath=//*[@id="requestRate-youSendFld-menu-item-3"]/div
     Click element  xpath=//div[contains(text(), "Ghanaian Cedi")]

     click element  xpath=//*[@id="requestRate-recipientGetsFld_container"]/div[2]
#     Execute JavaScript    window.scrollTo(1, document.body.scrollHeight)

     Mouse Over  xpath=//*[@id="requestRate-recipientGetsFld-menu-item-2"]/div
     Click element  xpath=//div[contains(text(), "Great British Pounds")]
#     Input Text  xpath=//*[@id="country-dropdown"]/div[1]/div[1]/div[1] albania
     Input Text  ${you_send_field}  100000
Submit for verification
     wait until page contains element  xpath=//*[@id="requestRate-continueBtn"]
               ##     sleep  3s
     click button  xpath=//button[contains(@id,"requestRate")]
#     //span[contains(text(), "CONTINUE")]
     Wait Until Page Contains  Transaction Details
     sleep  1s






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