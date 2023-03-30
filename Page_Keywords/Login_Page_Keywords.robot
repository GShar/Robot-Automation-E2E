*** Settings ***
Library  SeleniumLibrary
Documentation  This is the page object file for the login page and contains the element locaters
Resource  ../Resources/config.robot

*** Variables ***
${locater_login_error}=  data:qa-id:error-display
${locater_button_login}=  logIn
${locater_textbox_email}=  email
${locater_textbox_password}=  password
${locater_link_signup}=  link:Sign up
${locater_link_help}=  link:Need help?
${locater_checkbox_remember_me}=  data:qa-id:remember-me-checkbox
${locater_back_icon}=  class:styles_backIconContainer_MhkioW9m8rx70X7CIGuws
${locater_login_organisation_button}=  data:qa-id:log-in-with-organization-btn

*** Keywords ***
Open Browser To Login Page
    Open Browser  ${LOGIN_URL}  ${BROWSER}
    Maximize Browser Window

Enter A Valid Username
    Input Text  ${locater_textbox_email}  ${USERNAME}

Enter A Valid Password
    Input Password  ${locater_textbox_password}  ${PASSWORD}

Enter An Invalid Username
    Input Text  ${locater_textbox_email}  gsharma.1234

Enter An Invalid Password
    Input Password  ${locater_textbox_password}  Hudl

Submit Credentials
    Click Button  ${locater_button_login}

Login Error Message Displayed Should Be
    [Arguments]  ${error_message}
    Wait Until Element Is Visible  ${locater_login_error}
    Element Text Should Be  ${locater_login_error}  ${error_message}

Sign Up Link Is Visible And Contains Text
    [Arguments]  ${text}
    Element Should Be Visible  ${locater_link_signup}
    Element Text Should Be  ${locater_link_signup}  ${text}

Click Sign Up Link
    Click Link  ${locater_link_signup}

Help Link Is Visible And Contains Text
    [Arguments]  ${text}
    Element Should Be Visible  ${locater_link_help}
    Element Text Should Be  ${locater_link_help}  ${text}

Click Help Link
    Click Link  ${locater_link_help}

Remember Me Checkbox Is Visible
    Element Should Be Visible  ${locater_checkbox_remember_me}

Remember Me CheckBox Is Not Selected
    Checkbox Should Not Be Selected  ${locater_checkbox_remember_me}

Select Remember Me CheckBox
    Select Checkbox  ${locater_checkbox_remember_me}

Email TextBox Is Focused
    Element Should Be Focused  ${locater_textbox_email}

Go To Previous Page Using Back Icon
    Click Element  ${locater_back_icon}

Login Organisation Button Is Visible And Contains Text
    [Arguments]  ${text}
    Wait Until Element Is Visible  ${locater_login_organisation_button} 
    Element Text Should Be  ${locater_login_organisation_button}  ${text}  