utilities
header
	| oc s |
	oc := OrderedCollection new.
	OSSUnixSubprocess new
		command: 'swift';
		arguments: #('--version');
		redirectStdout;
		runAndWaitOnExitDo: [ :process :outString | oc := outString findTokens: String crlf ].
	oc := oc collect: [ :each | '// ' , each ].
	oc add: '// ' , self hostedVersion.
	s := WriteStream on: String new.
	oc
		do: [ :each | 
			s
				nextPutAll: each;
				nextPutAll: String crlf
			].
	^ s contents