class LoginScreen < EndomondoPage
  
  element(:signup_button) { "LoginButtonView id:'signup'" }
  element(:login_button) { "LoginButtonView id:'login'" }
  value(:not_logged_in?) { element_exists(login_button)}
  action(:press_login_button) {tap_when_element_exists(login_button)}
  trait(:trait) { login_button }
  
end