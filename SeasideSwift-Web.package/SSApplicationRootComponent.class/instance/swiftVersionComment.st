utilities
swiftVersionComment
	| oc s |
	oc := OrderedCollection new.
	OSSUnixSubprocess new
		command: 'swift';
		arguments: #('--version');
		redirectStdout;
		runAndWaitOnExitDo: [ :process :outString | oc := outString findTokens: String crlf ].
	oc := oc collect: [ :each | '// ' , each ].
	oc add: '// ', self hostedVersion.
	s := ''.
	oc do: [ :each | s := s , each , String crlf ].
	^ s
