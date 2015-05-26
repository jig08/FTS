public
search: aString
	^index queryFor: (self parseQueryString: aString).