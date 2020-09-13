*** Settings ***
Resource        ../Keywords/Variables.robot

*** Keywords ***
Open Chrome Browser
    Set Common Global Variables
    ${dc}                   create dictionary                      enableVNC=${True}               name= "Login_Chrome"
    Open browser            url=${URL}      browser=Chrome         remote_url=${Selenoid_Url}      desired_capabilities=${dc}
    #remote_url for passing Selenium Grid URL       #enableVnc to view browser window running using Vnc  #desired_Capabilities for driver
    set selenium speed      0.5s                           #this is for setting speed of selenium execution, basically the time difference between https requests

Open Firefox Browser
    Set Common Global Variables
    ${dc}                   create dictionary                      enableVNC=${True}               name= "Login_Opera"
    Open browser            url=${URL}      browser=Opera     remote_url=${Selenoid_Url}           desired_capabilities=${dc}      #For Renaming Test Case on Selenoid
    set selenium speed      0.5s