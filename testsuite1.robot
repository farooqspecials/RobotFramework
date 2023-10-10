*** Settings ***
Suite Setup       GotoHomePage
Suite Teardown    Close All Browsers
Library           SeleniumLibrary

*** Variables ***
${url}            https://automationexercise.com/login
@{CREDENTIALS}    farooqspecials@gmail.com    farooq007
&{LOGIN}          username=farooqspecials@gmail.com    password=farooq007

*** Test Cases ***
test1
    Open Browser    https://robotframework.org/    chrome
    Close Browser
    Log To Console    Test Executed Successfully

Test2
    [Tags]    Test2
    Open Browser    ${url}
    Input Text    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > input[type=email]:nth-child(2)    ${CREDENTIALS}[0]
    Input Password    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > input[type=password]:nth-child(3)    ${CREDENTIALS}[1]
    Click Button    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > button
    Close Browser
    Log To Console    %{username} login to %{os}

Test3
    [Tags]    Test3
    [Setup]    Log To Console    Test Case 3 Started
    Login
    [Teardown]    Log To Console    Test Case 3 Ended

*** Keywords ***
Login
    Input Text    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > input[type=email]:nth-child(2)    farooqspecials@gmail.com
    Input Password    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > input[type=password]:nth-child(3)    farooq007
    Click Button    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > button

GotoHomePage
    Open Browser    ${url}

