agenda-options
allDaySlot: aBoolean
	"
Determines if the 'all-day' slot is displayed at the top of the calendar.

Boolean, default: true

When hidden with false, all-day events will not be displayed in agenda views.

"

	self optionAt: 'allDaySlot' put: aBoolean