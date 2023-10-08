*** Settings ***
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
    Input Text    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > input[type=email]:nth-child(2)    ${LOGIN}{username}
    Input Password    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > input[type=password]:nth-child(3)    ${LOGIN}[password]
    Click Button    css:#form > div > div > div.col-sm-4.col-sm-offset-1 > div > form > button
    Close Browser
