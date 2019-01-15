*** Settings ***
Library  Selenium2Library

*** Keywords ***
Form Fillup
    Click Element  //a[contains(text(),'Examinee form')]
    Input Text  //input[@id='fname']  ${firstname}
    Input Text  //input[@id='lname']  ${lastname}
    Input Text  //input[@id='adrs']  ${address}
    Input Text  //input[@id='phn']  ${contact}
    #Click Element  //input[@id='inputFile']
    Choose File  //input[@id='inputFile']  ${cv}
    #Sleep  10
    Click Element  //button[@id='submit_form']
    #Alert Should Be Present  data is successfully stored
    sleep  10
    Alert Should Be Present  [object Object]
    sleep  10
    log to console  Successful Signup
    #Capture Page Screenshot  ${filename}


