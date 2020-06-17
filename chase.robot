*** Settings ***
Documentation  This is some basic info about the Whole suite
Library  SeleniumLibrary

*** Variables ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Test Cases ***
User must sign in to the check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.chase.com  chrome
    Sleep  3s
    Click Link  css=#skip-sidemenu
    Sleep  3s
    Click Link  css=#side-menu-header > div:nth-child(5) > div.sidemenu__prim > ul > li:nth-child(1) > a
    Sleep  3s
    Click Link  css=#SubHeaderOriginal > ul > li.sub-header__nav--item.active > a
    Sleep  3s
    Click Link  css=#popular > div:nth-child(2) > div > div > div > div.colctrl-section__2colcontainer--two.col-xs-12.col-sm-6.col-lg-6 > div > div > div > div > div > ul > li:nth-child(8) > a
    Sleep  3s
    Input Text  class=search-results--search__bar--search-input  Apply
    Sleep  3s
    Click Element  xpath=//*[@id="Module0"]/section/section[1]/div[4]/div/div/a
    Sleep  5s
    Click Link  css=body > div > div.header > header > div.header__inner.row > div.header__section.header__section--center.col-xs-6.col-sm-4 > a
    Click Link  css=#skip-sidemenu
    Click Link  css=#side-menu-header > div:nth-child(5) > div.sidemenu__prim > ul > li:nth-child(2) > a
    Switch Window  locator=New
    Sleep  3s
    Input Text  id=comment_box  This is a test
    Sleep  3s
    Click Element  xpath=//*[@id="rater_buttons"]/div[3]/label


