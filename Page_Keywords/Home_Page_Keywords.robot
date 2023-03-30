*** Settings ***
Library  SeleniumLibrary
Documentation  This is the page object file for the Home Page and conatins the page element locaters
Resource  ../Resources/config.robot

*** Variables ***
${locater_home_page_nav}  id:ssr-webnav

*** Keywords ***
Verify User Navigated To Home Page
    Wait Until Page Contains Element  ${locater_home_page_nav}
    Location Should Be  ${HOME_PAGE_URL}
    Title Should Be  Home - Hudl