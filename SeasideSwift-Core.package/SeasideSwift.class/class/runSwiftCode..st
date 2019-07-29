private
runSwiftCode: aString
	| fileName file fullName |
	fileName := (Random new next asString copyReplaceAll: '.' with: '')
		, '.swift'.
	file := self tempDirectory / fileName.
	file ensureDelete.
	file
		writeStreamDo:
			[ :stream | 
			stream
				nextPutAll: aString;
				nextPutAll: String crlf
			].
	fullName := file fullName.
	OSSUnixSubprocess new
		command: 'swift';
		arguments: (Array with: fullName);
		redirectStdout;
		redirectStderr;
		runAndWaitOnExitDo:
			[ :process :outString :errString | 
			file ensureDelete.
			process isSuccess
				ifTrue: [ ^ outString ]
				ifFalse: [ ^ errString ]
			]