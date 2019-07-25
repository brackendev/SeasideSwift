initializing
initialize
	super initialize.
	input := self header , String crlf , 'import Foundation'
		, String crlf , String crlf , 'print("Hello World")'.
	fileName := (Random new next asString copyReplaceAll: '.' with: '') , '.swift'