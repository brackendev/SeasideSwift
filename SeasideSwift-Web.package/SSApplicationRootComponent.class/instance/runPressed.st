utilities
runPressed
	| fileName working swift file fullName |
	fileName := (Random new next asString copyReplaceAll: '.' with: '') , '.swift'.
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
			file ensureDelete.
			output := process isSuccess
				ifTrue: [ outString ]
				ifFalse: [ errString ]
			]