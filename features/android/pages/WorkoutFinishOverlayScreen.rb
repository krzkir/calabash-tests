class WorkoutFinishOverlayScreen < EndomondoPage
  element(:overlay) {"View id:'workout_finish_overlay'"}
  trait(:trait) { overlay }
  action(:hide_overlay) { touch(overlay) }
end