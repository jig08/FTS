private
visitBlockArguments: aNodeCollection 
	^aNodeCollection do: [:each | 
		self addToken: ':'.
		self visitArgument: each]