general-display-options
buttonIcons: anObject
	"Determines which theme icons appear on the header buttons.

Object, default:

{
    prev: 'circle-triangle-w',
    next: 'circle-triangle-e'
}

This option only applies to calendars that have jQuery UI theming enabled with the theme option.

A hash must be supplied that maps button names (from the header) to icon strings. The icon strings determine the CSS class that will be used on the button. For example, the string 'circle-triangle-w' will result in the class 'ui-icon-triangle-w'.

If a button does not have an entry, it falls back to using buttonText."

	self optionAt: 'buttonIcons' put: anObject