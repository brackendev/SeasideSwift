initializing
initialize
	super initialize.
	input := self swiftVersionComment , String crlf, 'import Foundation' , String crlf
		, String crlf , 'print("Hello World")'.
	fileName := DateAndTime now asUnixTime asString , '.swift'
