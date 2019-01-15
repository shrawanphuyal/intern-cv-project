*** Settings ***
#Library  Selenium2Library
Resource    ../Resources/Keywords/browseropen.robot
Resource    ../Resources/Keywords/signup_keywords.robot
Resource    ../Resources/Keywords/registration.robot
Resource    ../Resources/Keywords/pokemail.robot
Resource    ../Resources/Keywords/loginkeyword.robot
#Resource    ../Resources/Keywords/about.robot
#Resource    ../Resources/Keywords/contact.robot
Variables   ../Resources/Variables/variablescollection.py
Suite Teardown  Close All Browsers

*** Test Cases ***
Browser opening
   [Tags]	   Signup form
    Open Google Chrome


User Signup
    Form Fillup

User Registration1
    New Registration

pokemail
    shrawan

Login user
    Login


