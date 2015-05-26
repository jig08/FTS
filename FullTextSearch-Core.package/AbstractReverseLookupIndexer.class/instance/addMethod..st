adding
addMethod: aMethod

	((aMethod hasPragmaNamed: 'binary') or: [ aMethod isFromTrait ])
		ifTrue: [ ^ self ].
		
	self basicAddMethod: aMethod.