*** Settings ***
Library    SeleniumLibrary
Documentation    Hudl Login Feature UI Functional Test Cases
...              Contains tests for UI Elements on the Login Page at Page Load
Resource    ../../../Page_Object_Model/Pages/Login_Page/keywords.robot
Resource    ../../../Resources/common.resource
Test Setup    Navigate To Login Page

*** Test Cases ***
Verify Login Organisation Button Text Value Is Correct
    [Tags]    regression
    Login Organisation Button Text Should Be    Log In with an Organization

Verify Title of Login Page
    [Tags]    regression
    Title of Login Page Should Be    Log In

Cursor Should Be Focused On Email TextBox On Page Load
    [Tags]    regression
    Email TextBox Should Be Focused

The CheckBox For Remember Me Should Not Be AutoSelected
    [Tags]    regression
    Remember Me CheckBox Is Not Selected    

Verify The Need Help Link Text Value Is Correct
    [Tags]    regression
    Help Link Text Value Should Be    Need help?    

Verify The Sign Up Link Text Value Is Correct
    [Tags]    regression
    Sign Up Link Text Should Be    Sign up

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


    
    



    

    