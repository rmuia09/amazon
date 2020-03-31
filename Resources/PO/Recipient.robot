*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${add_recipient_button}=  xpath=//*[@id="navbar_content__recipients_page"]

*** Keywords ***
Add Recipient
    Input details
#    Click form

Input details
#    sleep  15s
# HOME PAGE
   Wait Until Page Contains Element  xpath=//*[@id="root"]/div/div[2]/div
   Click Element  xpath=//*[@id="root"]/div/div[2]/div

#   Wait Until element contains  xpath=//*[@id="root"]/div/div[1]/nav/div/div/div/div[3]/div[2]/div[3]/button/span[1]  Request a Rate
#    sleep  2s
#    Click Element  xpath=//*[@id="root"]/div/div[1]/nav/div/div/div/div[3]/div[2]/div[3]/button/span[1]
#    //*[@id="navbar_content__recipients_page"]
# CLICK RECIPIENTS
    [Documentation]  Select Receipient

    click element  ${add_recipient_button}
     sleep  3s
    click element  xpath=//*[@id="recipientsPageToolbar-openNewBtn"]/span[1]
#    xpath=//*[@id="recipientsPageToolbar-openNewBtn"]/span[1]
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
     sleep  3s
#    ENTER ACCOUNT NAME (before Element had locator 'recipient_modal__name_field'.)
    Input Text  xpath=//*[@id="recipientModal-accountNameFld"]  Mr Bananas


    sleep  2s

#    ENTER STREET ADDRESS (before Element had locator 'recipient_modal__street_address_field')
    Input Text  xpath=//*[@id="recipientModal-streetAddressFld"]   56 Charlie street

    click element  xpath=//*[@id="country-dropdown"]/div[1]/div[1]
    sleep  2s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

#    click element  xpath=//*[@id="country-dropdown"]/div[2]
#    Select From List By Index  xpath=//*[@id="country-dropdown"]/div[2]  1

#CLICK COUNTRY DROPDOWN  (before Element had locator //*[@id="add-new-recipient-form"]/div[4]/div[1] )
     click element  //*[@id="recipientModal-registrationForm"]/div[4]/div[1]/div

     sleep  2s
     Execute JavaScript    window.scrollTo(1, document.body.scrollHeight)
#     Click Image id=select-search-icon
     Click element  xpath=//*[@id="country-dropdown"]/div[1]/div[1]/div[1]
#     Input Text  xpath=//*[@id="country-dropdown"]/div[1]/div[1]/div[1] albania
     Mouse Over  xpath=//*[@id="react-select-3-option-2"]
     Click element  xpath=//*[@id="react-select-3-option-2"]

#    ENTER STREET ADDRESS (before Element had locator 'recipient_modal__city_field')
#     Input Text  recipient_modal__city_field     City of Gold
    Input Text  xpath=//*[@id="recipientModal-cityFld"]  City of Gold
#     sleep  3s

#     ENTER BANK NAME
#//*[@id="recipientModal-bankNameFld"]
    Input Text  xpath=//*[@id="recipientModal-bankNameFld"]  Bank1

    Execute JavaScript    window.scrollTo(1, document.body.scrollHeight)
#     ENTER BANK NAME2


    Input Text  xpath=//*[@id="recipientModal-correspondenceFld"]  Bank1122
#    Bank1

#     IBAN

    Input Text  xpath=//*[@id="recipientModal-ibanFld"]  ES1902390806740044018026

#    BIC/SWIFT/Routing/ABA

    Input Text  xpath=//*[@id="recipientModal-bicFld"]  DEUTESBBXXX
    sleep  2s
    Execute JavaScript    window.scrollTo(1, document.body.scrollHeight)
    Click Button  xpath=//*[@id="recipientModal-submitFormBtn"]
    sleep  3s




#    Input Text  id=react-select-3-option-3  Algeria
#    Select From List By Index    xpath=//*[@id="country-dropdown"]/div[2]   [1]
#    click element  xpath=//*[@id="country-dropdown"]/div[1]/div[1] 1

#    Input Text  name=country  Afghanistan

# Select From List By Index  xpath=//*[@id="country-dropdown"]/div[1]/div[1]  1
#    click element   xpath=//select/option[1]



#Click form

#    Click Button  xpath=//*[@id="login-submitBtn"]

#    Wait Until Page Contains Element  xpath=/html/body/div[4]/div[3]/div/div/div
#    Click Element  xpath=/html/body/div[4]/div[3]/div/div/div


#    Click Button  xpath=//*[@id="verificationPassed-startBtn"]

#    Wait Until Page Contains Element  xpath=//*[@id="root"]/div/div[2]/div
#    Click Element  xpath=//*[@id="root"]/div/div[2]/div
#    sleep  5s

