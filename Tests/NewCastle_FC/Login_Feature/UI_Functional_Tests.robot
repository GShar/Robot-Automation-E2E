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


    
    



    

    