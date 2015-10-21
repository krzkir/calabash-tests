class TestDurationScreen < EndomondoPage
  
  element(:ok_button) { "Button id:'button1'" }
  
  trait(:trait) { ok_button }
  
  action(:press_ok_button) { tap_when_element_exists(ok_button) }
  
  def set_time
    query("NumberPicker id:'HoursPicker'", { setValue: 3 })
    query("NumberPicker id:'MinutesPicker'", { setValue: 3 })
    query("NumberPicker id:'SecondsPicker'", { setValue: 3 })
  end
  
end