"
BaselineOfSeasideSwift is the BaselineOf subclass for SeasideSwift.

"
Class {
	#name : #BaselineOfSeasideSwift,
	#superclass : #BaselineOf,
	#category : 'BaselineOfSeasideSwift'
}

{ #category : #baselines }
BaselineOfSeasideSwift >> baseline: spec [
	<baseline>
	spec
		for: #common
		do:
			[ self setUpDependencies: spec.
			spec
				package: 'SeasideSwift-Core'
				with: [ spec requires: #('SwiftPlayground' 'Teapot') ].
			spec
				package: 'SeasideSwift-Core-Tests'
				with: [ spec requires: #('SeasideSwift-Core') ].
			spec
				package: 'SeasideSwift-Web'
				with: [ spec requires: #('SeasideSwift-Core' 'Bootstrap4') ]
			]
]

{ #category : #baselines }
BaselineOfSeasideSwift >> setUpDependencies: spec [
	spec
		baseline: 'SwiftPlayground'
		with:
			[ spec
				repository: 'github://brackendev/SwiftPlayground-Pharo:master/src'
			].
	spec
		baseline: 'Bootstrap4'
		with:
			[ spec
				repository: 'github://astares/Seaside-Bootstrap4:master/src';
				loads: #('Core')
			].
	spec
		baseline: 'Teapot'
			with:
			[ spec
				repository: 'github://zeroflag/Teapot:v2.6.0/source';
				loads: #('Deployment')
			];
		import: 'Teapot'.
]
