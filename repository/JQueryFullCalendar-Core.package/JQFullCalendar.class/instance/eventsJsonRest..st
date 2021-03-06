event-data-callbacks
eventsJsonRest: aJSONFeedPath
	"
THIS DOES NOT WORK  see collectionOfEvents: or eventsJsonGet:

JSON:
A URL of a JSON feed that the calendar will fetch Event Objects from.

FullCalendar will visit the URL whenever it needs new event data. This happens when the user clicks prev/next or changes views. FullCalendar will determine the date-range it needs events for and will pass that information along in GET parameters.

The GET parameter names will be determined by the startParam and endParam options. ('start' and 'end' by default).

The value of the parameters will always be UNIX timestamps (seconds since 1970).

Consider the following script:

$('#calendar').fullCalendar({
    events: '/myfeed.php'
});

Here is a URL that FullCalendar might visit:

/myfeed.php?start=1262332800&end=1265011200&_=1263178646

The _ parameter is automatically inserted to prevent the browser from caching the result (see cacheParam).

If you need to access a feed that is in a different domain, you can use JSONP with a ? in your URL (see the JSONP discussion in $.ajax).

"



	

	self optionAt: 'events' put: aJSONFeedPath