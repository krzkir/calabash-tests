require 'calabash-android/calabash_steps'

Then(/^I close the app$/) do
  @workout_screen||=page(WorkoutScreen).await
  @workout_screen.press_more_options
  @more_options=page(MoreOptionsScreen).await
  @more_options.quit
end

When(/^I open the menu$/) do
    @workout_screen.press_more_options
end

When(/^I close settings menu$/) do
  tap_when_element_exists("ImageButton contentDescription:'Navigate up'")
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

Then(/^I (should|should not) see my profiles name$/) do |negate|
  if negate.include? 'not'
    wait_for_element_does_not_exist("RobotoTextView id:'userName'")
  else
    wait_for_element_exists("RobotoTextView id:'userName'")
  end
end

Then (/^I scroll until I see the "([^\"]*)" text$/) do |text|
  q = query("RobotoTextView text:'#{text}'")
  while q.empty?
    scroll_down
    q = query("RobotoTextView text:'#{text}'")
  end 
end

Then(/^I set date to 21-10-2015$/) do
  set_date("DatePicker id:'date_picker'", "21-10-2015")
end

Then(/^I set time to "(.*?)" on TimePicker with id "([^\"]*)"$/) do |time, id|
  set_time("TimePicker id:'#{id}'", time)
end

Then(/^I change training time$/) do
  wait_for_element_exists("NumberPicker id:'HoursPicker'")
  query("NumberPicker id:'HoursPicker'",{setValue:3})
  query("NumberPicker id:'MinutesPicker'",{setValue:3})
  query("NumberPicker id:'SecondsPicker'",{setValue:3})
end

Then(/^I change distance$/) do
  wait_for_element_exists("NumberPicker id:'MajorPicker'")
  query("NumberPicker id:'MajorPicker'",{setValue:3})
  query("NumberPicker id:'MinorPicker'",{setValue:3})
end

Then(/^I should see that timer is running$/) do
  q1=query("TextMeasuredView id:'TVmainZoneValue'")[0]["text"]
  sleep 2
  q2=query("TextMeasuredView id:'TVmainZoneValue'")[0]["text"]
  q1!=q2
end

Then(/^I should see that timer has stopped$/) do
  q1=query("TextMeasuredView id:'TVmainZoneValue'")[0]["text"]
  sleep 2
  q2=query("TextMeasuredView id:'TVmainZoneValue'")[0]["text"]
  q1==q2
end

Then(/^I resume training$/) do
  tap_when_element_exists("ImageButton id:'ButtonStartPauseFront'")
end