uploaded metadata
jslangnlJs
	^ WAFileLibraryResource
		filepath: 'js/lang/nl.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jslangnlJsContent)