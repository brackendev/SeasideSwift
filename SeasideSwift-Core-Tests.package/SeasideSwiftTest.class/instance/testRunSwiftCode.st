tests
testRunSwiftCode
	self assert: (SeasideSwift runSwiftCode: 'print("Hello, World!")') equals: 'Hello, World!'.
	self assert: (SeasideSwift runSwiftCode: 'print(1+1)') equals: '2'.