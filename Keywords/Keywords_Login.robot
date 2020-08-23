*** Settings ***
Resource        ../POM/Login_Page.robot

*** Keywords ***
Open Sign In Page
    Get Title Of SignIn Page
    Click SignIn Button in Landing Page

User SignIn
    [Arguments]         ${Username}         ${Password}
    Insert Text in Email                ${Username}
    Insert Text In Password             ${Password}
    Click SignIn Button
    Verify User Logged In

User SignIn Failed
    [Arguments]         ${Username}         ${Password}
    Insert Text in Email                ${Username}
    Insert Text In Password             ${Password}
    Click SignIn Button
    Verify User Failed Login