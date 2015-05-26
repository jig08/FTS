printing
printOn: aStream
	aStream nextPutAll: 'ChoiceSearchQuery with left and right : '; print: self left;print: self right. 