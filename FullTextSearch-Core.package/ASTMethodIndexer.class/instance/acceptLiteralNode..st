visiting
acceptLiteralNode: aLiteralNode
	| token |
	token := aLiteralNode token.
	(token isKindOf: RBNumberLiteralToken)
		ifTrue: [ ^ self addToken: token source ].
	self halt.