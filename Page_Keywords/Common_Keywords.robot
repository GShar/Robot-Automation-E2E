*** Settings ***
Library  SeleniumLibrary
Documentation  This file contains the common keywords used by the pages.

*** Keywords ***
User Should Navigate To Page
    [Arguments]  ${page}
    Wait Until Location Is  ${page}
    Location Should Be  ${page}