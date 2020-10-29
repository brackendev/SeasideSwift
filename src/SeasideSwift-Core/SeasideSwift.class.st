"
I am SeasideSwift, an object to start/stop the SSApplicationRootComponent.

Example invocations:

	SwiftPlayground start.
	SwiftPlayground stop.

"
Class {
	#name : #SeasideSwift,
	#superclass : #Object,
	#instVars : [
		'teapot'
	],
	#classInstVars : [
		'shared'
	],
	#category : 'SeasideSwift-Core'
}

{ #category : #private }
SeasideSwift class >> devCleanup [
	self shared stop.
	Teapot allInstancesDo: [ :i | i becomeForward: nil ].
	SeasideSwift allInstancesDo: [ :i | i becomeForward: nil ].
	3 timesRepeat: [ Smalltalk garbageCollect ]
]

{ #category : #examples }
SeasideSwift class >> exampleStart [
	<sampleInstance>
	self shared start
]

{ #category : #examples }
SeasideSwift class >> exampleStop [
	<sampleInstance>
	self shared stop
]

{ #category : #'instance creation' }
SeasideSwift class >> new [
	self error: 'SeasideSwift is a singleton -- send shared instead'
]

{ #category : #accessing }
SeasideSwift class >> shared [
	^ shared ifNil: [ shared := super new ]
]

{ #category : #initialization }
SeasideSwift >> initialize [
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
]

{ #category : #accessing }
SeasideSwift >> start [
	SSApplicationRootComponent initialize.
	ZnZincServerAdaptor start.
	teapot start
]

{ #category : #accessing }
SeasideSwift >> stop [
	teapot stop.
	ZnZincServerAdaptor stop
]

{ #category : #accessing }
SeasideSwift >> teapot [
	^ teapot
]

{ #category : #accessing }
SeasideSwift >> teapot: anObject [
	teapot := anObject
]
