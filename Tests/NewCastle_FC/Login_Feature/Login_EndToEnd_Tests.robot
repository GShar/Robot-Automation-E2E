*** Settings ***
Library  SeleniumLibrary
Documentation  Hudl Login Feature End To End Test Cases
...            Contains a complete user journey for covering login feature
...            User logs in from the main hudl website and logs out from home page. 
Resource  ../../../Page_Object_Model/Pages/Login_Page_Keywords.robot
Resource  ../../../Page_Object_Model/Pages/Common_Keywords.robot
Resource  ../../../Page_Object_Model/Pages/Hudl_Main_Page_Keywords.robot
Test Setup  Open Browser To Main Hudle Website
Test Teardown  Close Browser

*** Test Cases ***
User Is Able To Complete A Login And Logout Journey Succefully 
    [Tags]  e2e
    Select Login Page Button
    Click Login Page Icon
    Enter A Valid Username
    Enter A Valid Password
    Submit Credentials
    User Should Navigate To Home Page
    Logout From the Hudl Website
    User Should Navigate To The Hudl Main Page