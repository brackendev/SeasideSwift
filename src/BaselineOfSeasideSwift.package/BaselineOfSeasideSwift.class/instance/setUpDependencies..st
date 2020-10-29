baselines
setUpDependencies: spec
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