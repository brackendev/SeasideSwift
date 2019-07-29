private
devCleanup
	SeasideSwift shared stop.
	Teapot allInstancesDo: [ :i | i becomeForward: nil ].
	SeasideSwift allInstancesDo: [ :i | i becomeForward: nil ].
	3 timesRepeat: [ Smalltalk garbageCollect ]