baselines
setUpDependencies: spec
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
	spec
		baseline: 'OSSubprocess'
		with:
			[ spec
				repository: 'github://pharo-contributions/OSSubprocess:master/repository'
			]