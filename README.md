# RobotFW_KT

Follow these Steps for Getting Started: 
## 1. Download Python 
## 2. Download Pycharm 
## 3. Create new Project and select Python interpreter on your machine (not new Venv)
## 4. Install the following Libraries:
      1. Selenium
      2. Robotframework-SeleniumLibrary
      3. Robotframework-DatabaseLibrary
      4. Robot Framework
      5.robotframework-pabot
## Then install the following plugins:
      1. Robotframework support
      2. Run Robotframework
      3. Intellibot patched SeleniumLibrary
Then restart pycharm after installing plugins and Libs
Download Chrome driver or/and Gecko Driver and add it to Path variable or to the same location project created at. For Running Project easily; I added Drivers in Project Path

Test Automation Framework Project for Robot Framework which contains the following layers:
1. POM (Page Object Model)
    Which contains Keywords for each and every element will be used in each Page for AUT (Application Under Test)
    Each Keyword usually should contains of:
        1. Locator Identifier using ExplicitWaits of Selenium Library
        2. Action for the Element like "Click, Input, Select, ..etc"
2. Keywords
    Which contains Keyword for each Step details needed combined in One Keword. Guys coming from Java or Python this layer like Step definition to get your code organized
    
3. TestSuites
    Which contains Test Cases calling Kewords of Keyword level which contains:
      1. Test Setup/ Suite Setup
        This is used to be executed before Test Steps executed for each Test Cases in Test Case/Suite
      2. Test /Suite Teardown
        This is used to executed once at the end of Test Case/ suite execution
      3. Test Case Title
        Which should matches Test Case Titles
      4. [Tags]
        Which could contains Test Case Tags, IDs in Test Management Tools as well as Smoke-Test, Functionality, ..etc
      5. [Arguments]
        Which contains Test Arguments as a Parameters to pass Test Data 
      6. Test Steps
        Which calls Keword Name Levels

## For Execution use following Command
      robot TestSuites\Login_TestSuite.robot
This command will export by default three types of Reports(log.html, report.html, output.xml "Which we will use later for Test Execution on Test Tools like JIRA")

Project going to be updated Weekly basis and Readme going be modified. Feel Free to Clone, Contribute and Enjoy!

## 06-09-2020 Changes
1.   Adding ```Database_Queries.robot ```
      1. Connection to MySql Database using [PyMySQL](https://pypi.org/project/PyMySQL/) python client API Library for MySql
      2. Use ```query``` keyword for select retrieve values from created DB
      3. Retrive values from query results in @{result_array}
      4. Calling ```Database_Queries.robot ``` in Keyword common layer ```Keywords_Login.robot ```
2.   Use ```--outputdir ``` Flag for generate output.xml, log.html and report.html in different directory. The expected param is relative path directory:
```robot --outputdir ResultsAndReports/ TestSuites/Login_TestSuite.robot``` 
3.   Use ```-T ``` Flag for generate Reports in a timestamp format. This can be useful to avoid overriding results of cases in parallel execution
```robot -T --outputdir ResultsAndReports/ TestSuites/Login_TestSuite.robot```

For Installing and Creating new MySQL Database follow instructions [here](https://support.rackspace.com/how-to/install-mysql-server-on-the-ubuntu-operating-system/)

Check Created DB by Scripts in Mysql_DBscripts file

## 13-09-2020 Changes
*    Changes in ```Webdriver_Manager.robot ```
      1. Add ```remote_url``` param to execute Test Case on [Selenoid](https://github.com/aerokube/selenoid)
      2. Add ```desired_capabilities``` param for using ```enableVNC``` to view TCs while running on Selenoid docker containers
      3. Add ```name``` param for rename executing TCs on Selenoid docker containers

*    For getting your hands dirty faster on Selenoid setup, Please follow these commands on Linux:
      * `curl -s https://aerokube.com/cm/bash | bash` 
      * `chmod +x cm`
      * `./cm selenoid start --vnc`
      * `./cm selenoid-ui start`
      * `docker ps -a`
      * Make sure that docker container for selenoid-ui is up and running
      * Follow very detailed and Informative Guidelines on [Selenoid Documentation](https://aerokube.com/selenoid/latest/) 
      * Open http://${selenoid_server}:8080 and enjoy !



Made with :green_heart: by Mo Sedky
