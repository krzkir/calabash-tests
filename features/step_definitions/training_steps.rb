Then(/^I should see summary overlay$/) do
  @training_overlay=page(WorkoutFinishOverlayScreen).await
end

Then(/^I hide overlay$/) do
  @training_overlay.hide_overlay
end


Then(/^I should see summary screen$/) do
 @workout_summary=page(WorkoutFinishScreen).await
end