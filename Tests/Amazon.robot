*** Settings ***
Documentation  Test Amazon website
Library  SeleniumLibrary

*** Variables ***
Documentation  None to mention
Library  SeleniumLibrary

*** Test Cases ***
User must sign in to the check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  Appium book
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Wait Until Page Contains  results for "Appium book"
    Sleep  3s
    Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(4) > div > span > div > div > div:nth-child(2) > div.sg-col-4-of-12.sg-col-8-of-16.sg-col-16-of-24.sg-col-12-of-20.sg-col-24-of-32.sg-col.sg-col-28-of-36.sg-col-20-of-28 > div > div:nth-child(1) > div > div > div:nth-child(1) > h2 > a
    Sleep  3s
    Click Button  css=#add-to-cart-button-ubb
    Sleep  3s
    Click Link  css=#nav-logo > a
    Input Text  id=twotabsearchtextbox  Selenium book
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Wait Until Page Contains  results for "Selenium book"
    Sleep  3s
    Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(6) > div > span > div > div > div:nth-child(2) > div.sg-col-4-of-12.sg-col-8-of-16.sg-col-16-of-24.sg-col-12-of-20.sg-col-24-of-32.sg-col.sg-col-28-of-36.sg-col-20-of-28 > div > div:nth-child(1) > div > div > div:nth-child(1) > h2 > a
    Click Link  css=#mediaTab_heading_1 > a
    Sleep  3s
    Click Button  css=#add-to-cart-button
    Sleep  3s
    Click Link  css=#nav-cart
    


*** Keywords ***

