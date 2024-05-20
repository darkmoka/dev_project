*** Settings ***
Library     Browser


*** Variables ***
${CUSTOMER}     Customer1IoTerop
${PASS}         Customer1IoTerop!
${BROWSER}      chromium
${URL}          https://accounts.ioterop.com/login


*** Test Cases ***
Successfull login as Customer
    Open Chrome    ${BROWSER}    ${URL}
    Type customer login    ${CUSTOMER}    ${PASS}
    Login succeded


*** Keywords ***
Open Chrome
    [Arguments]    ${BROWSER}    ${URL}
    Open Browser    url=${URL}    browser=${BROWSER}

Type customer login
    [Arguments]    ${CUSTOMER}    ${PASSWORD}
    Type Text    xpath=//*[@id="username"]    ${CUSTOMER}
    Type Text    xpath=//*[@id="password"]    ${PASS}
    Click    xpath=/html/body/div/div/div[2]/form/button    left

Login succeded
    Wait For Elements State
    ...    xpath=/html/body/app-root/app-full-layout/mat-sidenav-container/mat-sidenav-content/div[2]/app-homepage/div/div/div/app-overview/h2
    ...    message=Overview
    Get Text
    ...    xpath=/html/body/app-root/app-full-layout/mat-sidenav-container/mat-sidenav-content/div[2]/app-homepage/div/div/div/app-overview/h2
    ...    message=OVERVIEW
