private
basicAddMethod: aMethod
	| tokens position |
	
	((aMethod hasPragmaNamed: 'binary') or: [ aMethod isFromTrait ])
		ifTrue: [ ^ self ].
		
	tokens :=  self tokenizeMethod: aMethod.
	position := 0.
	
	aMethod selector numArgs > 1
		ifTrue: [ self classify: aMethod under: aMethod selector position: position ].
	
	tokens do: [ :token | 
		position := position + 1. 
		self classify: aMethod under: token token  position: position ].