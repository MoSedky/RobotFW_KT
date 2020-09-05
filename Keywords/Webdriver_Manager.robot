*** Settings ***
Resource        ../Keywords/Variables.robot

*** Keywords ***
Open Chrome Browser
    Set Common Global Variables
    Open browser            ${URL}      Chrome               #this for open the browser for the passed driver and url
    set selenium speed      0.5s                           #this is for setting speed of selenium execution, basically the time difference between https requests

Open Firefox Browser
    Set Common Global Variables
    Open browser            ${URL}      Firefox
    set selenium speed      0.5s