*** Settings ***
#Library  SeleniumLibrary

Library  pyotp
#Variables   Users/richardmuia/Documents/filename.py
#| Variables | auth.py


Documentation  Trade BFX Tests
# notice we're no longer referencing the Selenium2Library in our script!

Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/TradeBFX.robot  # necessary for lower level keywords in test cases
Resource  ../Resources/PO/LandingPage.robot
#Resource  ../Resources/PO/auth.py


Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the below line to Terminal window to execute
# robot -d results tests/tradebfxfe.robot

*** Variables ***
${BROWSER} =  gc
#${START_URL} =  https://account-staging.tradebfx.com/signin
${EMAIL_FIELD} =  id=login-emailFld
${EMAIL_ADDRESS} =  richard+test15@azafinance.com
${ENVIRONMENT} =  stage
&{URL}  stage=https://account-staging.tradebfx.com/signin  prod=http://www.amazon.com
#${RESULT}=  | run process | python | /Users/richardmuia/Documents/filename.py
#${TOTP}=    | ${totp}

*** Test Cases ***
Login for valid user
    [Tags]  Smoke
    TradeBFX.Login

Login for invalid user
    [Tags]  Incorrect Login
    TradeBFX.LoginKO

Add recepient
    [Tags]  Smoke2
#    TradeBFX.Login
    TradeBFX.Recipient Add

