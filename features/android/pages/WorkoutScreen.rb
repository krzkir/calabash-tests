class WorkoutScreen < EndomondoPage
  
  element(:sport_main_button) { "SportMainButton id:'SportMainButton'" }
  element(:workout_button) { "ImageButton id:'ButtonStartPauseFront'" }
  element(:more_options) { "d ContentDescription:'More options'" }
  element(:inbox) { "ActionMenuItemView ContentDescription:'Inbox'" }
  element(:navigation_button) { "ImageButton ContentDescription:'Navigation drawer'" }
  element(:countdown_text) { "RobotoTextView id:'ButtonCountdownStopText'" }
  element(:stop_countdown) { "ImageButton id:'ButtonCountdownStopFront'" }
  
  value(:logged_in?) { element_exists(more_options) }
  value(:stop_visible?) { element_exists(stop_countdown) }
  
  trait(:trait) { more_options }
  
  action(:press_sport_main_button) { tap_when_element_exists(sport_main_button) }
  action(:press_workout_button) { tap_when_element_exists(workout_button) }
  action(:press_more_options) { tap_when_element_exists(more_options) }
  action(:press_navigation_button) { tap_when_element_exists(navigation_button) }
  action(:press_inbox) { tap_when_element_exists(inbox) }
  action(:press_stop_countdown) { tap_when_element_exists(stop_countdown) }
  
end