
class LoginWithEmailScreen < EndomondoPage
  element(:email_textfield) { "AutoCompleteTextView id:'email'" }
  element(:password_textfield) { "EditText id:'password'" }
  element(:login_button) { "LoginButtonView id:'commit'" }
  value(:not_logged_in?) { element_exists(email_text_field) }
  action(:press_login_button) {tap_when_element_exists(login_button)}
  trait(:trait) { email_textfield }
  
  def login_with(email, password)
    tap_when_element_exists(email_textfield)
    query(email_textfield, {setText: email})
    tap_when_element_exists(password_textfield)
    query(password_textfield, {:setText => password})
    press_login_button
  end
end