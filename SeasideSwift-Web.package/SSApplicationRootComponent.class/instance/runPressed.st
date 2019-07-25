utilities
runPressed
	| working swift file fullInput fullName |
	working := FileSystem disk workingDirectory.
	swift := working / 'swift'.
	swift createDirectory.
	file := swift / fileName.
	file ensureDelete.
	fullInput := input , String crlf.
	file writeStreamDo: [ :stream | stream nextPutAll: fullInput ].
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