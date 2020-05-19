## Automation POC with Selenium and RobotFramework

## Problem Statement

Automate a search website(www.reddit.com) and verify following :

* **Login_Test** : Verify if user is able to login correctly
* **Verify_VideoOrder_Chat_Test** : Verify if listing of popular posts, All posts, Chat functionality is working

## Setup

All the dependencies are in requirement.txt file

`pip install -r requirements.txt`

:point_up_2: This will install the required dependencies.

## Demo of the framework 

## Project details

* Language used : Python
* Automation Test framework : Selenium
* Framework : RobotFramework

## Project structure

* src/main/Reusable_Keywords - This stores all userdefined keywords which can be resued and called from anywhere

* src/resources - Stores Locators and Variables

* src/tests - Tests are stored here

### Steps to execute the test -

`robot "testname"`
Example - `robot Verify_VideoOrder_Chat_Test.robot`

