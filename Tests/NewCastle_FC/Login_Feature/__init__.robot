*** Settings ***
Documentation    Test suite for Login Tests
Library    SeleniumLibrary
Resource    ../../../Resources/config.robot
Suite Setup    Open Chrome Browser
Suite Teardown    Close Browser

*** Keywords ***
Open Chrome Browser
    Open Browser    browser=${browser}