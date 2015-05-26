private
classify: anObject under: aString position: nextString
	| token |
	token := aString trimBoth asLowercase.
	index at: token position: nextString put: anObject.
