*** Settings ***
Library     DatabaseLibrary

*** Variables ***
${DBName}               Robot_FW_Users
${DBUserName}           root
${DBPassword}           DBPassword
${DBHost}               xxx.xx.xx.x
${DBPort}               3306


*** Keywords ***
Get Email Address by User Full Name
    [Arguments]             ${UserName}
    connect to database         pymysql         ${DBName}       ${DBUserName}         ${DBPassword}     ${DBHost}       ${DBPort}
    #pymysql is python API model for Mysql DB connection, Please use cx_oracle and pymssql for Oracle and Microsoft SQL DB respectively
    @{result_array}             query           Select Email_address from Robot_Users where Full_Name like '%${UserName}%'
    log         @{result_array[0]}
    disconnect from database
    [Return]    @{result_array[0]}