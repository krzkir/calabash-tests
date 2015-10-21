class HistoryScreen < EndomondoPage
  
  element(:add_button) { "ImageButton id:'create_workout_fab'" }
  
  trait(:trait) { add_button }
  
  action(:press_add_button) { tap_when_element_exists(add_button) }
  
end