*** Settings ***
Library  Selenium2Library
Library  String
#Variables   ../Resources/Variables/variablescollection.py

*** Keywords ***
shrawan
    Open Browser  https://www.guerrillamail.com  ${BROWSER}
    Maximize Browser Window
    Click Element  //span[@id='inbox-id']
    sleep  2s
    #Clear Element Text	//span[@id='inbox-id']
    Input Text  //span[@id='inbox-id']//input[@type='text']  ${username1}
    sleep  2s
    Click Element  //button[@class='save button small']
    Sleep  30s
    #Wait Until Element Contains  (//td[@class='td3']//span[contains(text(),'Your verification')])  15s
    Click Element  (//td[@class='td3']//span[contains(text(),'Your verification')])
    sleep  10s
    Get Text  //div[@class='email_body']
    sleep  10s
    ${number}=    Get Text    //div[@class='email_body']
    ${substring}=    Get Substring  ${number}   26  32
    #${desiredNumber}=    Fetch From Right    ${number}    s
    Switch Browser  1   # index
    sleep  5s
    Input Text  //input[@id='emailInputVerify']  ${username1}
    Input Text  //input[@id='codeInputVerify']  ${substring}
    Click Element  //input[@value='Verify']
    sleep  10s
    #Alert Should Be Present  UsernameExistsException: User already exists
    #Click Element  //span[@id='inbox-id']
    #sleep  2s
    #Input Text  //span[@id='inbox-id']//input[@type='text']  ${substring}
    #sleep  10s
    log to console  successfull validate
    #Capture Page Screenshot  ${filename}