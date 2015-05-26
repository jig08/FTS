visiting
acceptBlockNode: aBlockNode 
	self addToken: '['.
		
	self visitBlockArguments: aBlockNode arguments.
	self visitNode: aBlockNode body.
	
	self addToken: ']'.