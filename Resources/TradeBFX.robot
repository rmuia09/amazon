*** Settings ***
Resource   ../Resources/PO/LandingPage.robot
Resource   ../Resources/PO/Login.robot
Resource   ../Resources/PO/LoginKO.robot
Resource   ../Resources/PO/Recipient.robot
Resource   ../Resources/PO/Transaction.robot



*** Keywords ***
Login
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Login.Login

LoginKO
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LoginKO.BadLogin

Recipient Add
   LandingPage.Load
   LandingPage.Verify Page Loaded
   Login.Login
   Recipient.Add Recipient

Transactions Do
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Login.Login
    Transaction.Do Transactions