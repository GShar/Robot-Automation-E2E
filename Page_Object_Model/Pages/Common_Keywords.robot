*** Settings ***
Library  SeleniumLibrary
Documentation  This file contains the common keywords used by the pages.
Resource  ../../Resources/config.robot

*** Keywords ***
User Should Navigate To Page
    [Arguments]  ${page}
    Wait Until Location Is  ${page}
    Location Should Be  ${page}

User Should Navigate To Home Page
    User Should Navigate To Page  ${home_page_url}

User Should Navigate to Sign Up Page
    User Should Navigate To Page  ${sign_up_page_url}

User Should Navigate To Help Page
    User Should Navigate To Page  ${help_page_url}

User Should Navigate To The Hudl Main Page
    User Should Navigate To Page  ${hudl_main_page_url}