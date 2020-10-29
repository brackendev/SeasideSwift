initialization
initialize
	super initialize.
	teapot := Teapot
		configure:
			{(#port -> 8081).
			(#debugMode -> false).
			(#bindAddress -> #[127 0 0 1])}.
	teapot
		POST:
			'/swift'
				->
					[ :req | 
					| bytes |
					bytes := ByteArray
						streamContents: [ :stream | req entity writeOn: stream ].
					bytes asString runSwift
					]