*** Settings ***
Library  Selenium2Library
#Library  OperatingSystem
#Suite Setup     Open browser    ${URL}   ${BROWSER}
#Suite Teardown  Close All Browsers

*** Keywords ***
Open Google Chrome
    Open Browser  ${URL}  ${BROWSER}
    #Set Environment Variable  webdriver.chrome.driver  /home/shrawan/PycharmProjects/inetrn_apply/venv/bin/chromedriver
    Maximize Browser Window
    Click Element  //a[contains(text(),'examinee form')]
    Title Should Be  Main Page

