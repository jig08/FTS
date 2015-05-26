matching
find: aStringQuery
	| methodsPositionDictionary |
	methodsPositionDictionary := index at: aStringQuery string ifAbsent: [ 
		index at: aStringQuery string asLowercase ifAbsent: [ ^ {} ]].
	^ methodsPositionDictionary keys