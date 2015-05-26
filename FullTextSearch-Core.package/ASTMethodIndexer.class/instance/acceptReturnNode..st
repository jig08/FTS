visiting
acceptReturnNode: aReturnNode 
	self addToken: '^'.
	^ self visitNode: aReturnNode value