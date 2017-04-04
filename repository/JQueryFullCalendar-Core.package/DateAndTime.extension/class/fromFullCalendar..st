*JQueryFullCalendar-Core
fromFullCalendar: aString
  | tokens hms dmy offset |
  tokens := aString findTokens: ' '.
  dmy := (tokens first findTokens: '/') collect: [ :token | token asNumber ].
  hms := (tokens second findTokens: ':') collect: [ :token | token asNumber ].
  offset := (tokens third findTokens: ':')
    collect: [ :token | 
      token first == $+
        ifTrue: [ token allButFirst asNumber ]
        ifFalse: [ token asNumber ] ].
  ^ self
    year: dmy third
    month: dmy second
    day: dmy first
    hour: hms first
    minute: hms second
    second: hms third
    offset:
      (Duration
        days: 0
        hours: offset first
        minutes: offset second
        seconds: 0)