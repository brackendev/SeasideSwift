baselines
baseline: spec
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