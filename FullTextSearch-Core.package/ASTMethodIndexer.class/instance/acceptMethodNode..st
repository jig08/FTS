visiting
acceptMethodNode: aMethodNode 
	self addTokens: aMethodNode selectorParts.
	self visitArguments: aMethodNode arguments.
	self acceptComments: aMethodNode comments.
	aMethodNode pragmas
		do: [ :each | self visitNode: each ].
	self visitNode: aMethodNode body