require 'calabash-android/calabash_steps'


Given(/^the app is launched$/) do
  
  @login_screen = page(LoginScreen).await
  
end


Given(/^I have logged in$/) do
  
  @login_screen = page(LoginScreen).await
  @login_screen.press_login_button
  @login_with_screen = page(LoginWithScreen).await
  @login_with_screen.press_login_with_email_button
  @login_with_email_screen = page(LoginWithEmailScreen).await
  @login_with_email_screen.login_with("testmail@te.st","endomondo")
  @workout_screen = page(WorkoutScreen).await
  
end

Given(/^I already am logged in$/) do

  @workout_screen = page(WorkoutScreen).await
  
end





When(/^I press login$/) do
  
  @login_screen.press_login_button
  @login_with_screen = page(LoginWithScreen).await
 
end


And(/^I press login with email$/) do
  
  @login_with_screen.press_login_with_email_button
  @login_with_email_screen = page(LoginWithEmailScreen).await
  
end


And(/^I enter my login and password followed by pressing login button$/) do
  
  @login_with_email_screen.login_with("testmail@te.st","endomondo")
  
end


Then (/^I should be logged in$/) do
 
    @workout_screen = page(WorkoutScreen).await
 
end