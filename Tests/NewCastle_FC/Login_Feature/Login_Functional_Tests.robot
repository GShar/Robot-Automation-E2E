*** Settings ***
Library  SeleniumLibrary
Documentation  Hudl Login Feature Functional Test Cases
...            Contains tests for login feature using robot framework
...            These tests cover the login functionality and the login page UI elements
Resource  ../../../Page_Objects/Login_Page_Keywords.robot
Resource  ../../../Page_Objects/Home_Page_Keywords.robot
Resource  ../../../Page_Objects/Common_Keywords.robot
Test Setup  Open Browser To Login Page
Test Teardown  Close Browser

*** Test Cases ***
User Is Able To Successfully Login Using Valid Username And Password
    [Tags]  regression  smoke
    Enter A Valid Username
    Enter A Valid Password
    Submit Credentials
    User Should Navigate To Page  https://www.hudl.com/home

User Cannot Login When Using Valid Username And Invalid Password
    [Tags]  regression  smoke
    Enter A Valid Username
    Enter An Invalid Password
    Submit Credentials
    Login Error Message Displayed Should Be  We didn't recognize that email and/or password.Need help?

User Cannot Login Using Invalid Username And Valid Password
    [Tags]  regression  smoke
    Enter An Invalid Username
    Enter A Valid Password
    Submit Credentials
    Login Error Message Displayed Should Be  We didn't recognize that email and/or password.Need help?

User Navigates To Sign Up Page Using Sign Up Link
    [Tags]  regression
    Click Sign Up Link
    User Should Navigate To Page  https://www.hudl.com/register/signup

User Should Be Able To Use The Help Link
    [Tags]  regression
    Click Help Link
    User Should Navigate To Page  https://www.hudl.com/login/help#

Verify All The UI Page Elements On Login Page At Page Load
    [Tags]  regression
    Title Should Be  Log In
    Email TextBox Is Focused
    Remember Me Checkbox Is Visible
    Remember Me CheckBox Is Not Selected
    Help Link Is Visible And Contains Text  Need help?
    Sign Up Link Is Visible And Contains Text  Sign up
    Login Organisation Button Is Visible And Contains Text  Log In with an Organization

User Is Able To Use Back Button To Navigate To Previous Page
    [Tags]  regression
    Go To Previous Page Using Back Icon
    Location Should Be  https://www.hudl.com/en_gb/
     








