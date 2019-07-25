utilities
hostedVersion
| seasideVersion |
seasideVersion := GRPlatform current seasideVersion.
	^ SystemVersion current imageVersionString , ', Seaside '
		, seasideVersion major asString , '.'
		, seasideVersion minor asString , '.'
		, seasideVersion revision asString