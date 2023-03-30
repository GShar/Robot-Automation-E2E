*** Settings ***
Library  SeleniumLibrary
Library  ../utility.py
Documentation  This is the page object file for the Main Hudle website page.
...            Contains the locater for the UI for this page.
Resource  ../config.robot

*** Variables ***
${locater_select_login}=  data:qa-id:login-select
${locater_login_hudl}=  data:qa-id:login-hudl
${locater_usermenu}=  class:hui-globalusermenu
${locater_logout_button}=  data:qa-id:webnav-usermenu-logout

*** Keywords ***
Open Browser To Main Hudle Website
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window

Select Login Page Button
    Wait Until Element Is Visible  ${locater_select_login}
    Click Element  ${locater_select_login}

Click Login Page Icon
    Wait Until Element Is Visible  ${locater_login_hudl}
    Click Element  ${locater_login_hudl}

Logout From the Hudl Website
    Wait Until Page Contains Element  ${locater_usermenu}
    Mouse Over  ${locater_usermenu}
    Wait Until Element Is Visible  ${locater_logout_button}
    Click Element  ${locater_logout_button}

    
    
  