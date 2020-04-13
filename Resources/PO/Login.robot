*** Settings ***
Documentation  Login Tests
Library  SeleniumLibrary
Library  pyotp
#Library  subprocess
#Variables   Users/richardmuia/Documents/filename.py
| Variables | auth.py
*** Variables ***
#@{USERNAME} =  id=login-emailFld  richard+test15@azafinance.com
#Example of running a python script
${totp}=  ${a}

*** Keywords ***

Login
    Enter credentials
    Submit form
Enter credentials
    Input Text  ${EMAIL_FIELD}  ${EMAIL_ADDRESS}
    Input Password  id=login-passwordFld    P@ssword2020!
    sleep  3s
Submit form
    Click Button  xpath=//*[@id="login-submitBtn"]
    Wait Until Page Contains Element  xpath=//*[@id="root"]/div/div/div/div[2]/div[1]
    sleep  3s
    mouse over  xpath=//*[@id="login-tfaCodeFld"]
    Wait Until Page Contains Element  xpath=//*[@id="login-tfaCodeFld"]
#    click element  xpath=//*[@id="login-tfaCodeFld"]
    Input Text  xpath=//*[@id="login-tfaCodeFld"]  ${totp}
    Select Frame  //*[@id="intercom-container"]/div/div[1]/iframe  # Select frame with id or name 'top-frame'
    Click element  //*[@id="intercom-container"]/div/div/div[1]/div/div/span    # Click link 'example' in the selected frame
#    sleep  6s
    Click Button  xpath=//*[@id="login-tfaSubmitBtn"]
    Wait Until Page Contains Element  xpath=//*[@id="root"]/div/div[2]/div/div[1]
#    //*[@id="root"]/div/div[2]/div/div[1]
    click element  xpath=//*[@id="root"]/div/div[2]/div/div[1]
    sleep  2s
#    ${my_new_variable} =  Set Variable  Something else
#    Log  ${my_new_variable}
#Submit form
#    Click Button  xpath=//*[@id="login-submitBtn"]




#    click element  xpath=//*[@id="login-tfaCodeFld"]
#    totp=  Set variable  ${TOTP}
#    ${TOTP} =  Set Variable  totp
#    ${TOKEN}=  Set Variable  totp.now()
#    token = totp.now()
#    print (token)


#     Input Text  id=login-tfaCodeFld  ${RESULT}




## click on signin button
#driver.find_element_by_xpath("//input[@id='signInSubmit']").click()
#
##wait for the 2FA feild to display
#authField = wait.until(EC.presence_of_element_located((By.xpath, "xpath goes here")))
## get the token from google authenticator
#totp = TOTP("secret goes here")
#token = totp.now()
#print (token)
## enter the token in the UI
#authField.send_keys(token)
## click on the button to complete 2FA
#driver.find_element_by_xpath("xpath of the button goes here").click()
## now open new tab
#driver.execute_script("""window.open("https://sellercentral.amazon.de/listing/download?ref=ag_dnldinv_apvu_newapvu")""")











# continue with your logic from here
#    otp = pyotp.TOTP('base32secret3232')
#    totp.now()
# OTP verified for current time 492039
#    totp.verify('492039')
    # => True

#    totp.verify('492039')
    # => False

# I WANT TO START TRADING POPUP
#    Wait Until Page Contains Element  xpath=/html/body/div[4]/div[3]/div/div/div
#   Click Element  xpath=/html/body/div[4]/div[3]/div/div/div


#    Click Button  xpath=//*[@id="verificationPassed-startBtn"]

    Wait Until Page Contains Element  xpath=//*[@id="root"]/div/div[2]/div/div[2]
    Click Element  xpath=//*[@id="root"]/div/div[2]/div/div[2]
    sleep  5s

