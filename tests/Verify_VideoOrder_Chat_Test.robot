*** Settings ***

Library  Selenium2Library
Resource  ../resources/Locators.robot
Resource  ../resources/Variables.robot
Resource  ../main/Reusable_Keywords.robot

Suite Teardown   Run Keyword And Ignore Error  Suite shutdown


*** Test Cases ***
Verify Video Order and Chat functionality
        [tags]  Smoke       Regression

        [Documentation]    Opens a browser. Enter URL. Input username, password and click signin
        ...                Click on Popular video icon. Verify if clicking on popular icon shows Popular videos in current region.
        ...                Click on All video icon. Verify if clicking on All icon show All videos
        ...                Click on Chat icon. Verify if chat window popsup

        Open Chrome with notifications disabled
        Go To    ${url}
        Login
        Wait for Page to load after login
        Click Popular icon
        Verify if posts are updated by popularity
        Click All Posts icon
        Verify if all posts are visible
        Click Chat icon
        Verify if Chat window is open

*** Keywords ***
Suite shutdown
        Close All Browsers