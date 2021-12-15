*** Settings ***
Library   SeleniumLibrary
Resource  common.robot

*** Variable ***
${login_btn}    dt_login_button
${email_field}  name=email
${pw_field}     //*[@type="password"]
${login_oauth_btn}  //*[text()="Log in"]
${acc_btn}    dt_core_account-info_acc-info
${real_acc}   real_account_tab
${demo_acc}   dt_core_account-switcher_demo-tab
${acc_field}   //*[@id="dt_VRTC4795338"]/span
${acc_setting}   //*[@id="dt_core_header_acc-info-container"]/div[2]/div
${api_tab}   //*[@id="dc_api-token_link"]
${trade_btn}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[2]
${name_field}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/div/input
${create_btn}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/button
${delete_btn}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/button
${yes_btn}      //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/div/button[2]
${deactivate_tab}   //*[@id="dc_deactivate-account_link"]
${deactivate_btn}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/button
${reason_btn}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[1]/span[2]
${platform}     //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[1]/textarea
${continue_btn}     //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]
${confirm}      //*[@id="modal_root"]/div/div/div/div[2]/button[2]
*** Keyword ***

*** Test Cases ***
#test
Open Deriv
    Login   ${my_email}     ${my_pw}
    APIToken
    DeleteToken
    DeactivateAcc

	# Close Browser
