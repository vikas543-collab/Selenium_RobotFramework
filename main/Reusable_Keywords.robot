*** Keywords ***

Open Chrome with notifications disabled
        ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
        Call Method     ${options}    add_argument    --disable-notifications
        ${driver}=    Create Webdriver    Chrome    options=${options}
        Go To    ${url}

Login
        Click Element       xpath:${login_button}
        Select Frame    xpath:${login_frame}
        Input Text   id:${username_textfield}   ${user_name}
        Input Text  id:${password_textfield}    ${password}
        Wait Until Element Is Visible       xpath=${sign_button}      timeout=10
        Click Element  xpath:${sign_button}
        Unselect Frame

Wait for Page to load after login
        Maximize Browser Window
        Wait Until Page Contains        Today's Top Growing Communities      timeout=10

Verify if username appears after logging in
        Wait Until Page Contains        vikas12349abc      timeout=10
        ${get_user_text}    Get Text    xpath=${username_label}
        Should Be Equal As Strings    ${get_user_text}    ${user_name}

Click Popular icon
        Wait Until Element Is Visible       id=${popular_icon}      timeout=10
        Click Element       id=${popular_icon}

Click All Posts icon
        Wait Until Element Is Visible       id=${all_posts_icon}      timeout=10
        Click Element       id=${all_posts_icon}

Verify if posts are updated by popularity
        Wait Until Element Is Visible       xpath=${popular_post_label}      timeout=10
        ${get_label_text}    Get Text    xpath=${popular_post_label}
        Should Be Equal As Strings    ${get_label_text}    Popular posts

Verify if all posts are visible
        Wait Until Element Is Visible       xpath=${All_posts_label}      timeout=10
        ${get_label_text}    Get Text    xpath=${All_posts_label}
        Should Be Equal As Strings    ${get_label_text}    All
        Page Should Not Contain     Popular posts

Click Chat icon
        Wait Until Element Is Visible       xpath=${chat_icon}      timeout=10
        Click Element       xpath=${chat_icon}

Verify if Chat window is open
        Wait Until Element Is Visible       xpath=${new_chat_label}      timeout=10
        ${get_label_text}    Get Text    xpath=${new_chat_label}
        Should Be Equal As Strings    ${get_label_text}    NEW CHAT