*** Settings ***
Library    SeleniumLibrary
Documentation    Hudl Login Feature Functional Test Cases
...              Contains tests for login feature using robot framework
...              These tests cover the login functionality and other functions performed from the Login Page
Resource    ../../../Page_Object_Model/Pages/Login_Page/keywords.robot
Resource    ../../../Resources/common.resource
Test Setup    Navigate To Login Page

*** Test Cases ***
User Is Able To Successfully Login Using Valid Username And Password
    [Tags]    regression    smoke
    Enter A Valid Username
    Enter A Valid Password
    Submit Credentials
    User Should Navigate To Home Page

User Cannot Login When Using Valid Username And Invalid Password
    [Tags]    regression    smoke
    Enter A Valid Username
    Enter An Invalid Password
    Submit Credentials
    Invalid Login Error Message Should be Displayed

User Cannot Login Using Invalid Username And Valid Password
    [Tags]    regression    smoke
    Enter An Invalid Username
    Enter A Valid Password
    Submit Credentials
    Invalid Login Error Message Should be Displayed
     