*** Settings ***
Library    SeleniumLibrary
Documentation    This is the page object file for the login page and contains the element locaters
Resource    ../../../Resources/config.robot
Resource    ../../../Page_Object_Model/Page_Objects/Login_Page/locaters.robot
Resource    ../../../Resources/common.resource

*** Variables ***
${expected_invalid_email_text}=    We didn't recognize that email and/or password.Need help?
${expected_need_help_link_text}=    Need help?
${expected_sign_up_link_text}=    Sign up
${expected_login_organisation_button_text}=    Log In with an Organization
${invalid_username}=    gsharma.1234
${invalid_password}=    Hudl

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${login_url}    ${browser}
    Maximize Browser Window

Navigate To Login Page
    Go To    ${login_url}

Enter A Valid Username
    Input Text    ${locater_textbox_email}    ${USERNAME}

Enter A Valid Password
    Input Password    ${locater_textbox_password}    ${PASSWORD}

Enter An Invalid Username
    Input Text    ${locater_textbox_email}    ${invalid_username}

Enter An Invalid Password
    Input Password    ${locater_textbox_password}    ${invalid_password}

Submit Credentials
    Click Button    ${locater_button_login}

Login Error Message Displayed Should Be
    [Arguments]    ${error_message}
    Wait Until Element Is Visible    ${locater_login_error}
    Element Text Should Be    ${locater_login_error}    ${error_message}

Sign Up Link Text Should Be
    [Arguments]    ${expected_sign_up_link_text}
    Element Should Be Visible    ${locater_link_signup}
    Element Text Should Be    ${locater_link_signup}    ${expected_sign_up_link_text}

Click Sign Up Link
    Click Link    ${locater_link_signup}

Help Link Text Value Should Be   
    [Arguments]    ${expected_need_help_link_text}
    Element Should Be Visible    ${locater_link_help}
    Element Text Should Be    ${locater_link_help}    ${expected_need_help_link_text}

Click Help Link
    Click Link    ${locater_link_help}

Remember Me CheckBox Is Not Selected
    Element Should Be Visible    ${locater_checkbox_remember_me}
    Checkbox Should Not Be Selected    ${locater_checkbox_remember_me}

Select Remember Me CheckBox
    Select Checkbox    ${locater_checkbox_remember_me}

Email TextBox Should Be Focused
    Element Should Be Focused    ${locater_textbox_email}

Go To Previous Page Using Back Icon
    Wait Until Element Is Visible    ${locater_back_icon}
    Click Element    ${locater_back_icon}

Login Organisation Button Text Should Be
    [Arguments]    ${expected_login_organisation_button_text}
    Wait Until Element Is Visible    ${locater_login_organisation_button} 
    Element Text Should Be    ${locater_login_organisation_button}    ${expected_login_organisation_button_text}  

Invalid Login Error Message Should be Displayed
    Login Error Message Displayed Should Be    ${expected_invalid_email_text}

Title of Login Page Should Be
    [Arguments]    ${expected_login_page_title}
    Title Should Be    ${expected_login_page_title}