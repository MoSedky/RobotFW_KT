*** Keywords ***
Set Common Global Variables
    Set Global Variable     ${URL}                         http://automationpractice.com/index.php
    Set Global Variable     ${Explicit_TimeOut}            60s
    set global variable     ${Selenoid_Url}                http://127.0.0.1:4444/wd/hub