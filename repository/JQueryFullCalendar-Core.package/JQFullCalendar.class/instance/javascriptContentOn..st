printing
javascriptContentOn: aStream
  aStream
    nextPutAll: 'var calendarEl=document.getElementById("calendar");';
    nextPutAll: 'var cal=new FullCalendar.Calendar(calendarEl';
    nextPut: $,.
  JSStream encodeArguments: self arguments on: aStream.
  aStream nextPutAll: '); cal.render()'