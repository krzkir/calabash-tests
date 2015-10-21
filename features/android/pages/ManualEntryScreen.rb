class ManualEntryScreen < EndomondoPage
  
  element(:duration_label) { "RobotoTextView text:'Duration'" }
  
  trait(:trait) { duration_label }
  
  action(:press_duration_label) { tap_when_element_exists(duration_label) }
  
end