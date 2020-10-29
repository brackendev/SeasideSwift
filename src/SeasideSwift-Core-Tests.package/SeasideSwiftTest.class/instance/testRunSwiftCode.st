tests
testRunSwiftCode
	self assert: 'print("Hello, World!")' runSwift equals: 'Hello, World!'.
	self assert: 'print(1+1)' runSwift equals: '2'.