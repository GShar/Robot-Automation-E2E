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

User Navigates To Sign Up Page Using Sign Up Link
    [Tags]    regression
    Click Sign Up Link
    User Should Navigate to Sign Up Page

User Should Be Able To Use The Help Link
    [Tags]    regression
    Click Help Link
    User Should Navigate To Help Page

User Is Able To Use Back Button To Navigate To Previous Page
    [Tags]    regression
    Go To Previous Page Using Back Icon
    User Should Navigate To The Hudl Main Page
     