
When(/^I (open|close) navigation drawer$/) do |action|
  if action.include? 'open'
  	@workout_screen.press_navigation_button
  	@navigation_screen = page(NavigationDrawerScreen).await
  else
  	@navigation_screen.close_navigation_drawer
  	page(WorkoutScreen).await
  end
end

And(/^I press history button$/) do
  
  @navigation_screen.press_history_button
  @history_screen = page(HistoryScreen).await
  
end


And(/^I press add button$/) do
  
  @history_screen.press_add_button
  @manual_entry_screen = page(ManualEntryScreen).await
  
end


And(/^I press duration$/) do
  
  @manual_entry_screen.press_duration_label 
  @duration_screen = page(TestDurationScreen).await
  
end


Then (/^I should be able to change time$/) do
  
  @duration_screen.change_time
  
end