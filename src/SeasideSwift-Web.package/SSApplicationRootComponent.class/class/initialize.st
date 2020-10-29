initialization
initialize
	"self initialize"

	| app |
	app := WAAdmin register: self asApplicationAt: 'SeasideSwift'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: SBSDeploymentLibrary
