*** Variables ***

${login_button}     .//*[contains(text(),'Log in')]
${login_frame}      .//*[contains(@src,'https://www.reddit.com/login/')]
${username_textfield}       loginUsername
${password_textfield}       loginPassword
${sign_button}      .//button[contains(text(),'Sign in')]
${username_label}       .//*[@id="email-collection-tooltip-id"]/span/span[1]
${popular_icon}        header-quicklinks-popular
${all_posts_icon}        header-quicklinks-all
${popular_post_label}       (.//*[contains(text(),'Popular')])[2]
${All_posts_label}      (.//span[contains(text(),'All')])
${chat_icon}        //*[@id="HeaderUserActions--Chat"]/a
${chat_frame}       .//*[@src='https://c.aaxads.com/pxusr.gif']//preceding::iframe[1]
${new_chat_label}       .//*[contains(text(),'New Chat')]