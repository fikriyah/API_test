*** Keyword ***
Login
    [arguments]      ${email}   ${pw}
     Open Browser    url=https://app.deriv.com   browser=chrome
	 wait until page does not contain element   dt_core_header_acc-info-preloader   60
	 wait until page contains element   ${login_btn}    60
	 Click Element   ${login_btn}
	 wait until page contains element   ${email_field}      15
	 input text     ${email_field}      ${email}
	 input text     ${pw_field}      ${pw}
	 Click Element   ${login_oauth_btn}


ApiToken
    wait until page does not contain element   dt_core_header_acc-info-preloader   60
    wait until page contains element   ${acc_setting}     60
    Click Element   ${acc_setting}
    wait until page contains element   ${api_tab}     60
    Click Element   ${api_tab}
    wait until page contains element   ${trade_btn}     60
    Click Element   ${trade_btn}
    Click Element   ${name_field}
    Input Text      ${name_field}       Akari
    Click Element   ${create_btn}

DeleteToken
    wait until page contains element   ${delete_btn}     60
    Click Element   ${delete_btn}
    wait until page contains element   ${yes_btn}       60
    Click Element   ${yes_btn}

DeactivateAcc
    wait until page contains element   ${deactivate_tab}    60
    Click Element   ${deactivate_tab}
    wait until page contains element   ${deactivate_btn}    60
    Click Element   ${deactivate_btn}
    wait until page contains element   ${reason_btn}    60
    Click Element   ${reason_btn}
    Click Element   ${platform}
    Input Text      ${platform}       binance
    Click Element   ${continue_btn}
    wait until page contains element   ${confirm_btn}    60
    Click Element   ${confirm_btn}






