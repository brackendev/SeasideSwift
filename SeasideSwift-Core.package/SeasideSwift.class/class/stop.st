public
stop
	| working swift |
	ZnZincServerAdaptor stop.
	working := FileSystem disk workingDirectory.
	swift := working / 'swift'.
	swift deleteAll
