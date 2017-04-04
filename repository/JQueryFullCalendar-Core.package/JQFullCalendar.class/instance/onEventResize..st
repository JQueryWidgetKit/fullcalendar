event-dragging-resizing-callbacks
onEventResize: aCallback
  "Triggered when resizing stops and the event has changed in duration.

function( event, delta, revertFunc, jsEvent, ui, view ) { }
event is an Event Object that hold the event's information (date, title, etc).

delta is a Duration Object that represents the amount of time the event's end was extended by. Available in version 2.0.1 and later.

revertFunc is a function that, if called, reverts the event's end date to the value before the drag. This is useful if an ajax call should fail.

jsEvent holds the native javascript event with low-level information such as mouse coordinates.

ui holds an empty object. Before version 2.1, the jQuery UI object.

view holds the current View Object.

Here is an example demonstrating most of these arguments:

$('#calendar').fullCalendar({
    events: [
        // events here
    ],
    editable: true,
    eventResize: function(event, delta, revertFunc) {

        alert(event.title + ' end is now ' + event.end.format());

        if (!confirm('is this okay?')) {
            revertFunc();
        }

    }
});"

  self
    optionAt: 'eventResize'
    put:
      (aCallback asFunction: #('event' 'delta' 'revertFunc' 'jsEvent' 'ui' 'view'))