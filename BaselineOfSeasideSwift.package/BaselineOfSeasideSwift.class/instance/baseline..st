baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ self setUpDependencies: spec.
			spec
				package: 'SeasideSwift-Core'
				with: [ spec requires: #('OSSubprocess' 'Teapot') ].
			spec
				package: 'SeasideSwift-Web'
				with: [ spec requires: #('SeasideSwift-Core' 'Bootstrap4') ]
			]