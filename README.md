# Robot-Automation-E2E
This UI automation testing framework is built using the Robot Framework.  
It is being used to automation test a Login Feature which is part of an existing website.  
It consists of different tests which are functional, end to end, UI and are run using the Chrome Browser.  
It utilises browser automation features and keywords provided by the Robot Selenium Library.

This Framework provides the following:
- Runs test cases for login on chrome browser
- Tests the Login Page and the login functionality.
- A test suite with Functional, End to End, and UI Tests.
- Generate Log File containing Log.
- Generates Test report.
- Generates Screenshotsfor failed tests.


## Tools Used:
- Python 3
- Robot Framework
- Selenium
- Package Manager - Pip : https://pip.pypa.io/en/stable/

## Design Pattern Used
  I have used a pattern to the Page Object Model as the pattern for designing the framework.  
  I have created the page objects with the page keywords as Robot Framework uses keywords which are written in its own langauge/DSL, called Robot.  
  Please see the `Page_Objects` folder within the root Folder `Robot_Automation_E2E\Page_Object_Model`.

  It Contains the following Page Locaters Files:

  - Login_Page_Locaters
  - Hudl_Main_Page_Locaters

  The Page files are in `Pages` folder within `Robot_Automation_E2E\Pages`
  - Login_Page_Keywords
  - Hudl_Main_Page_Keywords
  - Common_Page_Keywords

I have used the advanced version of the Keyword pattern as the pattern for writing the tests.
As an example please see : https://robotframework.org/?tab=0&example=Advanced%20Example#getting-started
This design pattern is similar to BDD(except the Given When Then), and uses custom keywords which define the user behaviour.
It is a bit more elaborative then the standard keywords provided by Robot Framework and are customised as per the Scenarios of the Website we are testing.

## Folder Structure
- Page Object Model  
  - Page_Object_Model -> Page_Objects -> Hudl_Main_Page -> locaters.robot  
  - Page_Object_Model -> Page_Objects -> Login_Page -> locaters.robot  
      Page Object Folder contain pages which contain locaters for the UI elements on the respective pages in the `locaters.robot` file.  
      This is similar to Page Elements file

  - Page_Object_Model -> Pages -> Hudl_Main_Page -> keywords.robot
  - Page_Object_Model -> Pages -> Login_Page -> keywords.robot
      The Pages folder contains `keywords.robot` for keywords specific to the page. These our own customised keywords.  
      They are using Robots Frameworks existing Built In Selenium keywords and extended them to provide more domain specific keywords.  
      Please refer to:
  https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top

- Resources  
  - Resources -> common.resource  
    This resource file is a file extension for files which contain the common keywords and variables used by the project.

  - Resources -> config.robot  
  - Tests -> NewCastle_FC -> Login_Feature -> `__init__.robot`.  
      This file is the initialization file that robot framework recommends for create a test suite and must be present in the test suite folder.

- Tests
  - Tests -> NewCastle_FC -> Login_Feature -> End_To_End_Tests.robot  
  - Tests -> NewCastle_FC -> Login_Feature -> Functional_Tests.robot  
  - Tests -> NewCastle_FC -> Login_Feature -> UI_Functional_Tests.robot  

  The Tests contain the NewCastle _FC, which is the name of the Product.  
  At the second level the Login Feature folder represents the name of the Feature which we are testing.  
  For Example:  
  Tests -> `<Product Name>` -> `<Feature Name>` -> 

## Installation and setup  
- Make Sure you have Python 3 installed and your PYTHONPATH variable is pointing to Scripts folder and python.exe(within your python path) 
- Use pip to install the robot framework along with the selenium library in the command below
- `pip install robotframework-seleniumlibrary`
- Install webdriver manager, this helps to manage the downloading of browser drivers to your project 
- `pip install webdrivermanager` 
- Now download the chrome browser by simple command:
- `webdrivermanager chrome`
- For more insight please see : http://robotframework.org/SeleniumLibrary/

## Editor Used
- I have used the Visual Studio Code as the editor and found it very simple to use.
- Please follow the guide :
https://docs.robotframework.org/docs/getting_started/ide

## Running Tests
- Once you have set up the framework using the steps above
- You should be able to run the test using the commands below :
- `robot -d results -v USERNAME:<Your Username> -v PASSWORD:<Your Password> -s "Functional_Tests" .\Tests\NewCastle_FC\Login_Feature\`
- Make sure that you are in the directory of the project folder which is `Robot_Automation-E2E`
- Running a single test :
- `robot -d results -v USERNAME:<Your Username> -v PASSWORD:<Your Password> -t "User Is Able To Use Back Button To Navigate To Previous Page" .\Tests\NewCastle_FC\Login_Feature\`

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