require 'calabash-android/calabash_steps'



Given(/^I have logged in$/) do
  tap_when_element_exists("RobotoTextView marked:'Login'")
  tap_when_element_exists("RobotoTextView marked:'Login with Email'")
  enter_text("AutoCompleteTextView marked:'email'", 'testmail@te.st')
  enter_text("EditText marked:'password'", 'endomondo')
  tap_when_element_exists("RobotoTextView marked:'Login'")
end

Then(/^I close the app$/) do
  tap_when_element_exists("d contentDescription:'More options'")
  tap_when_element_exists("TextView marked:'Exit'")
end

When(/^I open the menu$/) do
  tap_when_element_exists("d contentDescription:'More options'")
 end

 When(/^I start training$/) do
  tap_when_element_exists("ImageButton id:'ButtonStartPauseFront'")
end

 Then(/^I pause training$/) do
  tap_when_element_exists("ImageButton id:'ButtonStartPauseFront'")
end

And(/^I stop training$/) do
	tap_when_element_exists("ImageButton id:'ButtonCountdownStopFront'")
end

When(/^I (open|close) navigation drawer$/) do |action|
  if action.include? 'open'
 	tap_when_element_exists("ImageButton contentDescription:'Navigation drawer'")
  else
	tap_when_element_exists("ImageButton contentDescription:'Information about your favorite sports tracking app'")
  end
end

Then(/^I (should|should not) see my profiles name$/) do |negate|
  if negate.include? 'not'
   	wait_for_element_does_not_exist("RobotoTextView id:'userName'")
  else
 	wait_for_element_exists("RobotoTextView id:'userName'")
  end
end