*** Settings ***
Library    SeleniumLibrary
Documentation    This is the page object file for the Main Hudle website page.
...              Contains the locater for the UI for this page.
Resource    ../../../Resources/config.robot
Resource    ../../../Page_Object_Model/Page_Objects/Hudl_Main_Page/locaters.robot

*** Keywords ***
Open Browser To Main Hudle Website
    Open Browser    ${hudl_main_page_url}    ${browser}
    Maximize Browser Window

Select Login Page Button
    Wait Until Element Is Visible    ${locater_select_login}
    Click Element    ${locater_select_login}

Click Login Page Icon
    Wait Until Element Is Visible    ${locater_login_hudl}
    Click Element    ${locater_login_hudl}

Logout From the Hudl Website
    Wait Until Page Contains Element    ${locater_usermenu}
    Mouse Over    ${locater_usermenu}
    Wait Until Element Is Visible    ${locater_logout_button}
    Click Element    ${locater_logout_button}
