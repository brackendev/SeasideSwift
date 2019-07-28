initializing
initialize
	super initialize.
	input := self header , String crlf , 'import Foundation'
		, String crlf , String crlf , 'print("Hello World")'