utilities
runPressed
	| working swift file fullName |
	working := FileSystem disk workingDirectory.
	swift := working / 'swift'.
	swift createDirectory.
	file := swift / fileName.
	file ensureDelete.
	file
		writeStreamDo: [ :stream | 
			stream
				nextPutAll: input;
				nextPutAll: String crlf
			].
	fullName := file fullName.
	OSSUnixSubprocess new
		command: 'swift';
		arguments: (Array with: fullName);
		redirectStdout;
		redirectStderr;
		runAndWaitOnExitDo: [ :process :outString :errString | 
			output := process isSuccess
				ifTrue: [ outString ]
				ifFalse: [ errString ]
			]