uploaded
localesdeJsContent
	^ 'FullCalendar.globalLocales.push(function () {
  ''use strict'';

  var de = {
    code: "de",
    week: {
      dow: 1, // Monday is the first day of the week.
      doy: 4  // The week that contains Jan 4th is the first week of the year.
    },
    buttonText: {
      prev: "ZurÃ¼ck",
      next: "Vor",
      today: "Heute",
      year: "Jahr",
      month: "Monat",
      week: "Woche",
      day: "Tag",
      list: "TerminÃ¼bersicht"
    },
    weekText: "KW",
    allDayText: "GanztÃ¤gig",
    moreLinkText: function(n) {
      return "+ weitere " + n;
    },
    noEventsText: "Keine Ereignisse anzuzeigen"
  };

  return de;

}());
'