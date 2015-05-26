private
basicAddMethod: aMethod
	|   |
	
	((aMethod hasPragmaNamed: 'binary') or: [ aMethod isFromTrait ])
		ifTrue: [ ^ self ].
		
	self splitCamelCaseAndAdd: aMethod getSource