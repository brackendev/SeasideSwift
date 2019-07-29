accessing
stop
	teapot stop.
	ZnZincServerAdaptor stop.
	[ SeasideSwift tempDirectory  deleteAll ]
		on: Error
		do: [ :err | Transcript crShow: err ]