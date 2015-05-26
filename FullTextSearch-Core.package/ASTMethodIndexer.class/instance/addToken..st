initialize-release
addToken: anRBToken
	(anRBToken value = ' ')
		ifTrue: [ ^ self ].
	self increaseTokenIndex.
	" should add the value to the index "
	self addString: anRBToken value at: self tokenIndex  