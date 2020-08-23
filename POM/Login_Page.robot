*** Settings ***
Library             SeleniumLibrary        # This for Selenium Library keywords
*** Variables ***

${SignIn_btn_landing}               //*[contains(@class,'login')]

${Expected_Welcome_text}            //img[contains(@src,'logo')]

${Usermail_txt}                     (//*[contains(text(),'Email')])[2]/..//input

${Password_txt}                     //*[contains(text(),'Password')]/..//input

${SignIn_btn}                       //*[contains(@id,'SubmitLogin')]

${Success_login_msg}                //h1[contains(text(),'My account')]

${Failed_login_msg}                //*[contains(text(),'failed')]

*** Keywords ***
Click SignIn Button in Landing Page
    wait until element is enabled       ${SignIn_btn_landing}      ${Explicit_TimeOut}       #check if an element is enabled
    click element           ${SignIn_btn_landing}        #Click element

Get Title Of SignIn Page
    wait until page contains element       ${Expected_Welcome_text}      ${Explicit_TimeOut}      #Check if Page contains Welcome Element

Insert Text in Email
    [Arguments]         ${Usermail_value}               #This value will be filled as an argument to Keyword
    wait until element is enabled       ${Usermail_txt}            ${Explicit_TimeOut}
    input text          ${Usermail_txt}         ${Usermail_value}

Insert Text in Password
    [Arguments]         ${Password_value}
    wait until element is enabled       ${Password_txt}            ${Explicit_TimeOut}
    input text          ${password_txt}         ${Password_value}

Click SignIn Button
    wait until element is visible       ${SignIn_btn}              ${Explicit_TimeOut}
    click element         ${SignIn_btn}

Verify User Logged In                                   #Assert that Success Sign In msg displays
    wait until page contains element         ${success_login_msg}       ${Explicit_TimeOut}

Verify User Failed login
    wait until page contains element         ${Failed_login_msg}        ${Explicit_TimeOut}