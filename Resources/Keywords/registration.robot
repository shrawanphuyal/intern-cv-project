*** Settings ***
Library  Selenium2Library
#Suite Setup     Open browser    ${URL}
#Suite Teardown  Close All Browsers
*** Keywords ***
Registration
    Click Element  //a[contains(text(),'register admin')]
    Input Text  //input[@id='emailInputRegister']  ${username}
    Input Text  //input[@id='passwordInputRegister']  ${password}
    Input Text  //input[@id='password2InputRegister']  ${password}
    Click Element  //input[@value='submit']
    sleep  10
    Alert Should Be Present  UsernameExistsException: User already exists

New Registration
    #[Arguments]  ${username1}
    Click Element  //a[contains(text(),'register admin')]
    Input Text  //input[@id='emailInputRegister']  ${username1}
    Input Text  //input[@id='passwordInputRegister']  ${password}
    Input Text  //input[@id='password2InputRegister']  ${password}
    Click Element  //input[@value='submit']
    sleep  10
    Alert Should Not Be Present  UsernameExistsException: User already exists
    log to console  Successfull Registration