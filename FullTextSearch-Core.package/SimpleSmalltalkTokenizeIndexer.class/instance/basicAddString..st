as yet unclassified
basicAddString: aString
	self increaseTokenIndex.
	self classify: currentMethod under: aString position: tokenIndex