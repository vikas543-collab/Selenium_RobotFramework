*** Settings ***

Library  Selenium2Library
Resource  ../resources/Locators.robot
Resource  ../resources/Variables.robot
Resource  ../main/Resuable_Keywords.robot

Suite Teardown   Run Keyword And Ignore Error  Suite shutdown


*** Test Cases ***
Verify if user is able to login
        [tags]  Smoke       Regression

        [Documentation]    Opens browser to login url, inputs valid username
        ...                and password and verify that the user is able to login
        ...                After logging in - Username should be visible

        Open Chrome with notifications disabled
        Go To    ${url}
        Login
        Wait for Page to load after login
        Verify if username appears after logging in

*** Keywords ***
Suite shutdown
    Close All Browsers
