initialize-release
addTokens: anArray 
	anArray do: [ :token|
		self addToken: token ].