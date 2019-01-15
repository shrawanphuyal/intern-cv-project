*** Settings ***
Library  Selenium2Library
Library  String
Variables   ../Resources/Variables/variablescollection.py
Suite Teardown  Close All Browsers

*** Test Cases ***
Browser opening
    mailinator




*** Keywords ***
shrawan
    Open Browser  https://www.guerrillamail.com  ff
    Maximize Browser Window
    Click Element  //span[@id='inbox-id']
    sleep  2s
    #Clear Element Text	//span[@id='inbox-id']
    Input Text  //span[@id='inbox-id']//input[@type='text']  ${username1}
    sleep  2s
    Click Element  //button[@class='save button small']
    sleep  10s
    #Wait Until Element Contains  //a[contains(text(),'Your verification code')]  10s
    Click Element  (//td[@class='td3']//span[contains(text(),'Your verification')])
    sleep  10s
    Get Text  //div[@class='email_body']
    sleep  10s
    ${number}=    Get Text    //div[@class='email_body']
    ${substring}=    Get Substring  ${number}   25  32
    #${desiredNumber}=    Fetch From Right    ${number}    s
    Click Element  //span[@id='inbox-id']
    sleep  2s
    Input Text  //span[@id='inbox-id']//input[@type='text']  ${substring}
    sleep  10s
    Capture Page Screenshot  ${filename}


mailinator
    Open Browser  https://www.mailinator.com  ff
    Maximize Browser Window
    #Click Element  //span[@id='inbox-id']
    sleep  2s
    #Clear Element Text	//span[@id='inbox-id']
    Input Text  //input[@id='inboxfield']  ${username}
    sleep  2s
    Click Element  //button[contains(text(),'Go!')]
    sleep  5s
    Click Element  //td[contains(text(),'010101682d1ba276-79ed9233-19a4-493d-a655-7f93e7a43')]
    sleep  5s
    Fetch From Right  is
    #Get Text

test1
    Open Browser  http://google.com.np  ff
    #Location Should Be  http://google.com
    Title Should Be  Google
    Input Text  //input[@title='Search']  shrawan
    sleep  5s
    #Execute Javascript   ("window.open('http://google.com', 'new_window')")
    Open Browser  http://yahoo.com  ff  alias=second
    #Location Should Be  http://yahoo.com
    #Select Window  Title=Google
    #Switch Browser  1   # index
    #Wait And Select Window  Title=Google
    #Title Should Be  Google
    #sleep  5s
    #Switch Browser  second  # alias
    #Title Should Be  Yahoo
    #sleep  5s
    #${url}=   get location
    #log to console  ${url}
    #Input Text  //input[@title='Search']  shrawan
    Close All Browsers
    Capture Page Screenshot  ${filename1}