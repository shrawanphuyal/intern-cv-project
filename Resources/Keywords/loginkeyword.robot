*** Settings ***
Library  Selenium2Library

*** Keywords ***
Login
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Input Text  //input[@id='emailInputSignin']  ${username1}
    Input Text  //input[@id='passwordInputSignin']  ${password}
    Click Element  //input[@id='login_btn']
    Wait Until Page Contains  Hi the admin page is under maintenance. please wait..
    Page Should Contain  Hi the admin page is under maintenance. please wait..
    log to console  Successful login
