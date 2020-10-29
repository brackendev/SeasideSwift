"
A SeasideSwiftTest is a test class for testing the behavior of SeasideSwift
"
Class {
	#name : #SeasideSwiftTest,
	#superclass : #TestCase,
	#category : 'SeasideSwift-Core-Tests'
}

{ #category : #tests }
SeasideSwiftTest >> testRunSwiftCode [
	self assert: 'print("Hello, World!")' runSwift equals: 'Hello, World!'.
	self assert: 'print(1+1)' runSwift equals: '2'.
]
