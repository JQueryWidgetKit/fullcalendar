selection-callbacks
onSelect: aCallback
  "A callback that will fire after a selection is made.

function( start, end, jsEvent, view, [ resource ] )
start is a Moment indicating the beginning of the selection.

end is a Moment indicating the end of the selection. It is an exclusive value, so if the selection is all-day, and the last day is a Thursday, end will be Friday.

You can test if the start/end is timed or all-day by calling hasTime (more info).

jsEvent holds the primitive JavaScript event with information such as mouse coordinates. If select has been triggered via the select method, jsEvent will be undefined.

If the Scheduler plugin is installed, the final resource argument is the Resource Object the user selected."

  self
    optionAt: 'select'
    put: (aCallback asFunction: #('start' 'end' 'jsEvent' 'view'))