baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Bootstrap4'
				with: [ spec
						repository: 'github://astares/Seaside-Bootstrap4:master/src';
						loads: #('Core') ].
			spec
				baseline: 'OSSubprocess'
				with: [  spec repository: 'github://pharo-contributions/OSSubprocess:master/repository' ].
			spec
				package: 'SeasideSwift-Core'
				with: [ spec requires: #('Bootstrap4' 'OSSubprocess') ].
			spec
				package: 'SeasideSwift-Web'
				with: [ spec requires: #('SeasideSwift-Core') ] ]
