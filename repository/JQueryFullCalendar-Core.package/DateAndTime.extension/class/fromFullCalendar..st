*JQueryFullCalendar-Core
fromFullCalendar: aString
  "FullCalendar now uses ISO 8601 Date Strings in the format YYYY-MM-DDTHH:MM:SS[+|-]HH:MM"

  | dateString timeString offsetString hms ymd offset |
  dateString := aString copyFrom: 1 to: 10.
  timeString := aString copyFrom: 12 to: 19.
  offsetString := aString copyFrom: 20 to: 25.
  ymd := (dateString findTokens: '-') collect: [ :token | token asNumber ].
  hms := (timeString findTokens: ':') collect: [ :token | token asNumber ].
  offset := (offsetString findTokens: ':')
    collect: [ :token | 
      token first == $+
        ifTrue: [ token allButFirst asNumber ]
        ifFalse: [ token asNumber ] ].
  ^ self
    year: ymd first
    month: ymd second
    day: ymd third
    hour: hms first
    minute: hms second
    second: hms third
    offset:
      (Duration
        days: 0
        hours: offset first
        minutes: offset second
        seconds: 0)