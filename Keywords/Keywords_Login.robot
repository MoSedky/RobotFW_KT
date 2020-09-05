*** Settings ***
Resource        ../POM/Login_Page.robot
Resource        ../Keywords/Database_Queries.robot

*** Keywords ***
Open Sign In Page
    Get Title Of SignIn Page
    Click SignIn Button in Landing Page

User SignIn
    [Arguments]         ${Username}         ${Password}             ${Expected_Scenario}
    ${EmailAddress}     Get Email Address by User Full Name         ${Username}
    Insert Text in Email                ${EmailAddress}
    Insert Text In Password             ${Password}
    Click SignIn Button
    run keyword if      '${Expected_Scenario}'=='Success'             Verify User Logged In
    ...    ELSE          Verify User Failed Login


#User SignIn Failed
#    [Arguments]         ${Username}         ${Password}
#    Insert Text in Email                ${Username}
#    Insert Text In Password             ${Password}
#    Click SignIn Button
#    Verify User Failed Login