class MoreOptionsScreen < EndomondoPage
  
  element(:settings) { "TextView text:'Settings'" }
  element(:exit) { "TextView text:'Exit'" }
  
  action(:press_settings) {tap_when_element_exists(settings)}
  action(:exit) {tap_when_element_exists(exit)}
  
  trait(:trait) { exit }
  
end