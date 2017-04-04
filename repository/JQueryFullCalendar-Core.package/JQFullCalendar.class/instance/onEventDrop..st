event-dragging-resizing-callbacks
onEventDrop: aCallback
  "Triggered when dragging stops and the event has moved to a different day/time.

function( event, delta, revertFunc, jsEvent, ui, view ) { }
event is an Event Object that hold the event's information (date, title, etc). Call hasTime on the event's start/end to see if it has been dropped in a timed or all-day area (more info).

delta is a Duration Object that represents the amount of time the event was moved by. Available in version 2.0.1 and later.

revertFunc is a function that, if called, reverts the event's start/end date to the values before the drag. This is useful if an ajax call should fail.

jsEvent holds the native JavaScript event with low-level information such as mouse coordinates.

ui holds an empty object. Before version 2.1, the jQuery UI object.

view holds the current View Object.

eventDrop does not get called when an external event lands on the calendar. eventReceive is called instead.

Here is an example demonstrating most of these arguments:

$('#calendar').fullCalendar({
    events: [
        // events here
    ],
    editable: true,
    eventDrop: function(event, delta, revertFunc) {

        alert(event.title + ' was dropped on ' + event.start.format());

        if (!confirm('Are you sure about this change?')) {
            revertFunc();
        }

    }
});"

  self
    optionAt: 'eventDrop'
    put:
      (aCallback asFunction: #('event' 'delta' 'revertFunc' 'jsEvent' 'ui' 'view'))