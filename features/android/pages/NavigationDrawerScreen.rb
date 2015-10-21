class NavigationDrawerScreen < EndomondoPage
  
  element(:history_button) { "RobotoTextView text:'History'" }
  element(:close_drawer_button) { "ImageButton contentDescription:'Information about your favorite sports tracking app'" }
  
  trait(:trait) { history_button }
  
  action(:press_history_button) { tap_when_element_exists(history_button) }
  action(:close_navigation_drawer) { tap_when_element_exists(close_drawer_button) }
  
end