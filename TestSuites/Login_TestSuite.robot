*** Settings ***
Documentation    Test Suites for Login Cases      #This for writing description for your test suite
Resource        ../Keywords/Keywords_Login.robot
Resource        ../Keywords/Webdriver_Manager.robot
Test Setup     Open Chrome Browser      #This is used to be executed before Test Steps executed for each Test Cases in Test Suite
Test Teardown  close browser            #This is used to executed once at the end of suite execution

*** Test Cases ***

Test Case SignIn with Valid Credentials
    [Tags]          Smoke-Test, Login-Functionality, Positive
    Open Sign In Page
    User SignIn                     ELkurfchannel@gmail.com         123456

Test Case SignIn with Invalid Credentials
    [Tags]          Smoke-Test, Login-Functionality, Negative
    [Setup]         Open Firefox Browser        #This will overrides the Test Setup of Test Suite, Can be used when one of Test Cases Setup is different than the whole Suite
    Open Sign In Page
    User SignIn Failed             ELkurfchannel@gmail.com         Invalid_password