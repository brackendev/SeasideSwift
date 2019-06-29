utilities
hostedVersion
	^ SystemVersion current imageVersionString , ', Seaside '
		, GRPlatform current seasideVersion major asString , '.'
		, GRPlatform current seasideVersion minor asString , '.'
		, GRPlatform current seasideVersion revision asString
