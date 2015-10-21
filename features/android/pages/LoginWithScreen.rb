class LoginWithScreen < EndomondoPage
  trait(:trait) { login_with_email_button }  
  element(:login_with_google_button) { "LoginButtonView id:'plus'" }
  element(:login_with_facebook_button) { "LoginButtonView id:'facebook'" }
  element(:login_with_email_button) { "LoginButtonView id:'email'" }
  
  value(:not_logged_in?) { wait_for_elements_exist([login_with_google_button,login_with_facebook_button,login_with_email_button],
                           timeout: 10)}
  action(:press_login_with_google_button) {tap_when_element_exists(login_with_google_button)}
  action(:press_login_with_facebook_button) {tap_when_element_exists(login_with_facebook_button)}
  action(:press_login_with_email_button) {tap_when_element_exists(login_with_email_button)}
end