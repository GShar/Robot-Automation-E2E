# Robot-Automation-E2E
This UI automation testing framework is built using the Robot Framework.
It is being used to automation test a Login Feature which is part of an existing website.
It consists of different tests which are functional, end to end, UI and are run using the Chrome Browser 
and browser automation features provided by the Robot Selenium Library.

## Design Pattern Used
I have used a pattern to the Page Objects Pattern as the pattern for designing the framework.
I have replaced the page objects with the page keywords instead as Robot Framework uses keywords

Please see the `Page_Keywords` folder within the root Folder `Robot_Automation_E2E`.

It Contains the following Page Keywords Files:

- Login_Page_Keywords
- Hudl_Main_Page_Keywords
- Home_Page_Keywords
- Common_Page_Keywords

I have used the advanced version of the Keyword pattern as the pattern for writing the tests.
As an example please see : https://robotframework.org/?tab=0&example=Advanced%20Example#getting-started
This design pattern is similar to BDD, and uses custom keywords which define the user behaviour.
It is a bit more elaborative then the standard keywords provided by Robot Framework and are customised as per the Scenarios of the Website we are testing.


## Tools Used:
- Python 3
- Robot Framework
- Package Manager - Pip : https://pip.pypa.io/en/stable/

## Installation and setup  
- Use pip to install the robot framework along with the selenium library in the command below
- `pip install robotframework-seleniumlibrary`
- Install webdriver manager, this helps to manage the downloading of browser drivers to your project 
- `pip install webdrivermanager` 
- Now downlaod the chrome browser by simple command:
- `webdrivermanager chrome`
- For more insight please see : http://robotframework.org/SeleniumLibrary/

## Editor Used
- I have used the Visual Studio Code as the editor and found it very simple to use.
- Please follow the guide :
https://docs.robotframework.org/docs/getting_started/ide

## Running Tests
- Once you have set up the framework using the steps above
- You should be able to run the test using the commands below :
- `robot -d results .\Tests\NewCastle_FC\Login_Feature\Login_FunctionalTests.robot`
- Make sure that you are in the directory of the project folder which is `Robot_Automation-E2E`

## Logging and Reporting
- The log file is available in the results folder with the name : `log.html`
- To enable logging and set log levels please see: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#log-levels
- Reporting is enabled by default
- Reports are stored in the results directory with the name : `report.html`

## Scenarios Covered
- The scenarios I have covered are divided between functional and end to end tests as follows:
  ### Functional Tests
    - User Is Able To Successfully Login Using Valid Username And Password
    - User Cannot Login When Using Valid Username And Invalid Password
    - User Cannot Login Using Invalid Username And Valid Password
    - User Navigates To Sign Up Page Using Sign Up Link
    - User Should Be Able To Use The Help Link
    - Verify All The UI Page Elements On Login Page At Page Load
    - User Is Able To Use Back Button To Navigate To Previous Page

  ### End To End Tests:
    - User Is Able To Complete A Login And Logout Journey Successfully 

## Future Work
  - Add Multiple browser tests
  - Add Parralellisation
  - Dockerise the the tests
  - Integration With CI










